#!/usr/bin/perl

# $Id: configure.pl,v 1.07 2011/06/28 00:13:48 sbajic Exp $
# DSPAM
# COPYRIGHT (C) 2002-2012 DSPAM PROJECT
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# This configuration file is read by all the CGI scripts to configure both the
# environment that DSPAM is working in and the way it will display information
# to the web user.

# Default DSPAM enviroment
$CONFIG{'DSPAM_HOME'}	= "/var/lib/dspam";
$CONFIG{'DSPAM_BIN'}	= "/usr/bin";
$CONFIG{'DSPAM'}	= $CONFIG{'DSPAM_BIN'} . "/dspam";
$CONFIG{'DSPAM_STATS'}	= $CONFIG{'DSPAM_BIN'} . "/dspam_stats";
$CONFIG{'DSPAM_ARGS'}	= "--deliver=innocent --class=innocent " .
                          "--source=error --user %CURRENT_USER% -d %u";
$CONFIG{'TEMPLATES'}	= "./templates";	# Location of HTML templates
$CONFIG{'DSPAM_PROCESSES'} = "ps auxw | grep dspam | grep -v 'grep\|cgi\|sock' | wc -l"; # use ps -deaf for Solaris
$CONFIG{'MAIL_QUEUE'}	= "mailq | grep '^[0-9,A-F]\{10,12\}[\t ][\t ]*[1-9]' | wc -l";

$CONFIG{'WEB_ROOT'}	= "./"; # URL location of included htdocs/ files

# Default DSPAM display
#$CONFIG{'DATE_FORMAT'}	= "%d.%m.%Y %H:%M"; # Date format in strftime style
					     # if undefined use default DSPAM display format
$CONFIG{'HISTORY_SIZE'}	= 799;		# Number of items in history
$CONFIG{'HISTORY_PER_PAGE'} = 100;	# Number of items per page
$CONFIG{'HISTORY_DUPLICATES'} = "yes";	# Wether to show duplicate entries in history "yes" or "no"
$CONFIG{'HISTORY_HTMLIZE'} = "no";	# Wether to HTML-ize sender and subject in history "yes" or "no"
$CONFIG{'QUARANTINE_HTMLIZE'} = "no";	# Wether to HTML-ize sender and subject in quarantine "yes" or "no"
$CONFIG{'MAX_COL_LEN'}	= 50;		# Max chars in list columns
$CONFIG{'SORT_DEFAULT'}	= "Rating";	# Show quarantine by "Date" or "Rating"
$CONFIG{'3D_GRAPHS'}	= 1;		# 0=graphs in 2D, 1=graphs in 3D
$CONFIG{'OPTMODE'}	= "NONE";	# OUT=OptOut IN=OptIn NONE=not selectable

# Full path to TTF font(s) used for legend, x and y labels in Graphs. GD must be compiled
# with TTF support if you want to use this feature.
#$CONFIG{'GRAPHS_X_LABEL_FONT'} = "/usr/share/fonts/dejavu/DejaVuSans.ttf";
#$CONFIG{'GRAPHS_Y_LABEL_FONT'} = "/usr/share/fonts/dejavu/DejaVuSans.ttf";
#$CONFIG{'GRAPHS_LEGEND_FONT'}  = "/usr/share/fonts/dejavu/DejaVuSans-Bold.ttf";

# Add customized settings below
$CONFIG{'LOCAL_DOMAIN'}	= "example.org";

$ENV{'PATH'}		= "$ENV{'PATH'}:$CONFIG{'DSPAM_BIN'}";

# Autodetect filesystem layout and preference options
$CONFIG{'AUTODETECT'}	= 1;

# Or, if you're running dspam.cgi as untrusted, it won't be able to auto-detect
# so you will need to specify some features manually:
#$CONFIG{'AUTODETECT'}	= 0;
#$CONFIG{'LARGE_SCALE'}	= 0;
#$CONFIG{'DOMAIN_SCALE'}= 0;
#$CONFIG{'PREFERENCES_EXTENSION'} = 0;

# Get DSPAM version
$CONFIG{'DSPAM_VERSION'} = "Unknown Version";
open(PIPE, $CONFIG{'DSPAM'} . " --version|");
while(<PIPE>) {
  chomp;
  if (/^(DSPAM Anti\-Spam Suite .*)$/) {
    $CONFIG{'DSPAM_VERSION'} = $1;
    last;
  }
}
close(PIPE);

# Make a list of available templates/languages
my @dslanguages = ();
undef %LANG;
require "$CONFIG{'TEMPLATES'}/strings.pl";
while (($key, $value) = each(%LANG)) {
  $CONFIG{'LANG'}->{'en'}->{$key} = $value;
}
$CONFIG{'LANG'}->{'en'}->{'TEMPLATEDIR'} = $CONFIG{'TEMPLATES'};
$CONFIG{'LANG'}->{'en'}->{'NAME'} = 'en';
$CONFIG{'LANG'}->{'en'}->{'NAME'} = $LANG{'lang_name'} if (defined $LANG{'lang_name'});
push(@dslanguages, qq!<option value="en">&nbsp;$CONFIG{'LANG'}->{'en'}->{'NAME'}</option>!);
# Do now the other languages
opendir TEMPLDIR, $CONFIG{'TEMPLATES'} or die "Can not open template directory";
my @templatefiles = sort grep !/^\.\.?$/, readdir TEMPLDIR;
closedir TEMPLDIR;
foreach (@templatefiles) {
  my $langcode = $_;
  my $langname = $_;
  if ($langcode ne "" && -d "$CONFIG{'TEMPLATES'}/$langcode") {
    $CONFIG{'LANG'}->{$langcode}->{'TEMPLATEDIR'} = "$CONFIG{'TEMPLATES'}/$langcode";
    $CONFIG{'LANG'}->{$langcode}->{'NAME'} = $langcode;
    undef %LANG;
    if (-s "$CONFIG{'TEMPLATES'}/$langcode/strings.pl") {
      require "$CONFIG{'TEMPLATES'}/$langcode/strings.pl";
    } else {
      while (($key, $value) = each(%{$CONFIG{'LANG'}->{'en'}})) {
        $LANG{$key} = $value if($key ne "NAME" && $key ne "TEMPLATEDIR");
      }
      delete($LANG{'lang_name'});
    }
    $CONFIG{'LANG'}->{$langcode}->{'NAME'} = $LANG{'lang_name'} if (defined $LANG{'lang_name'});
    while (($key, $value) = each(%LANG)) {
      $CONFIG{'LANG'}->{$langcode}->{$key} = $value;
    }
    push(@dslanguages, qq!<option value="$langcode">&nbsp;$CONFIG{'LANG'}->{$langcode}->{'NAME'}</option>!);
  }
}
if (scalar(@dslanguages) == 0) {
  $CONFIG{'LANGUAGES'} = "";
} else {
  unshift(@dslanguages, qq!&nbsp;&nbsp;<select name="language">!);
  push(@dslanguages, qq!</select>!);
  $CONFIG{'LANGUAGES'} = join("\n", @dslanguages);
}
@templatefiles=();

# Determine if templates are available for the current
# HTTP_ACCEPT_LANGUAGE (see RFC 4646 for more info).
my $langlist = lc($ENV{'HTTP_ACCEPT_LANGUAGE'})||'';
my $langpat = qr'[a-zA-Z]{1,8}(\-[a-zA-Z]{1,8})?';
my $qvalpat = qr'(0(\.\d{0,3})?)|(1(\.0{0,3})?)';
my $q = -1.0;
my $templates = '';
my $langused = '';
for my $langpref (split /,\s*/, $langlist) {
  $langpref =~ /^([^;]+)(;q=)?(.*)?/;
  my $lang = $1 || '';
  my $qval = $3 || 1.0;
  my $langcode = '';
  if ($lang =~ /^($langpat)|(x\-$langpat)|\*$/ && $qval =~ /^($qvalpat)$/) {
    if ($q lt $qval) {
      $lang =~ s/^x\-//;
      if ($lang =~ /^(.*)\-.+$/) {
        $langcode = $1;
      }
      if ($lang ne '' && $lang ne '*' && -e $CONFIG{'TEMPLATES'} . '/' . $lang . '/nav_performance.html') {
        $q = $qval;
        $templates = $CONFIG{'TEMPLATES'} . '/' . $lang;
        $langused = $lang;
      } elsif ($langcode eq 'en') {
        $q = $qval;
        $templates = $CONFIG{'TEMPLATES'};
        $langused = 'en';
      } elsif ($langcode ne '' && -e $CONFIG{'TEMPLATES'} . '/' . $langcode . '/nav_performance.html') {
        $q = $qval;
        $templates = $CONFIG{'TEMPLATES'} . '/' . $langcode;
        $langused = $langcode;
      }
    }
  }
}
if ($templates ne '') {
  $CONFIG{'TEMPLATES'} = $templates;
  $CONFIG{'LANGUAGE_USED'} = $langused;
} else {
  $CONFIG{'LANGUAGE_USED'} = 'en';
}

$CONFIG{'DSPAM_CGI'} = "dspam.cgi";

# Configuration was successful
1;
