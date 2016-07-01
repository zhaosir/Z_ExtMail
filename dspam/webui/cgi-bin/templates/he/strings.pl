#!/usr/bin/perl

# $Id: strings.pl,v 1.07 2011/06/28 00:13:48 sbajic Exp $
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

$LANG{'lang_name'}			= "&#1506;&#1489;&#1512;&#1497;&#1514;";
$LANG{'lang_select'}			= "���";

$LANG{'empty'}				= "���";
$LANG{'admin_suite'}			= "���� �����";
$LANG{'alert_name'}			= "�� ������";
$LANG{'remove_alert'}			= "���";
$LANG{'user_form'}			= "����� ���� �������� ����";
$LANG{'user_form_submit'}		= "����";

$LANG{'admin_form'}			= "����� ���� �������� ���� <b>���� ������</b>";
$LANG{'admin_form_submit'}		= "����";

$LANG{'option_disable_filtering'}	= "���� ����� �-DSPAM";
$LANG{'option_enable_filtering'}	= "���� ����� �-DSPAM";

$LANG{'quarantine_rating'}		= "�����";
$LANG{'quarantine_date'}		= "�����";
$LANG{'quarantine_from'}		= "���";
$LANG{'quarantine_subject'}		= "����";

$LANG{'history_show'}			= "���";
$LANG{'history_show_all'}		= "���";
$LANG{'history_show_spam'}		= "���";
$LANG{'history_show_innocent'}		= "����";
$LANG{'history_show_whitelisted'}	= "�����";
$LANG{'history_retrain_as_spam'}	= "���";
$LANG{'history_retrain_as_innocent'}	= "����";
$LANG{'history_retrain_as'}		= "�-";
$LANG{'history_retrain_undo'}		= "���";
$LANG{'history_retrained'}		= "����";
$LANG{'history_label_resend'}		= "���� ���";
$LANG{'history_label_whitelist'}	= "�����";
$LANG{'history_label_spam'}		= "���� ���";
$LANG{'history_label_innocent'}		= "����";
$LANG{'history_label_miss'}		= "�����";
$LANG{'history_label_virus'}		= "�����";
$LANG{'history_label_RBL'}		= "����� �����";
$LANG{'history_label_block'}		= "����";
$LANG{'history_label_corpus'}		= "�����";
$LANG{'history_label_unknown'}		= "�� ����";
$LANG{'history_label_error'}		= "�����";

$LANG{'error_no_historic'}		= "�� ���� ���� �������.";
$LANG{'error_cannot_open_log'}		= "�� ���� ����� �� ���� �-���";
$LANG{'error_no_identity'}		= "����� �����. �� ���� ����� �� �����.";
$LANG{'error_invalid_command'}		= "����� �� �����";
$LANG{'error_cannot_write_prefs'}	= "�� ���� ����� �� �������";
$LANG{'error_no_sigid'}			= "�� ����� ����� ����� )MSG ID(";
$LANG{'error_no_alert_specified'}	= "�� ������ �����.";
$LANG{'error_message_part1'}		= "������ ���� ���� ���� ����� �����:";
$LANG{'error_message_part2'}		= "�� ���� �� �� �����, �� ��� ����� ������.";
$LANG{'error_filesystem_scale'}		= "�� ���� ����� �� ����� ������";
$LANG{'error_load_default_prefs'}	= "�� ���� ����� �� ������ ����� �����";
$LANG{'error_access_denied'}		= "����� �����";

# The text for the legend should be encoded in HTML character entities in order
# to be displayed correctly by GD. You should as well set GRAPHS_X_LABEL_FONT,
# GRAPHS_Y_LABEL_FONT and GRAPHS_LEGEND_FONT in configure.pl to a TTF font that
# is capable to display Hebrew characters. Unfortunately U+202B and U+202C don't
# work with GD and you NEED to write all the text backwards since GD does not
# know anything about right-to-left page direction.
# If you don't know how to convert the characters to be HTML charater entities
# then use something like recode (http://recode.progiciels-bpi.ca/) and/or
# htmlrecode (http://bisqwit.iki.fi/source/htmlrecode.html).
$LANG{'graph_legend_x_label_hour'}	= "&#1492;&#1506;&#1513;";
$LANG{'graph_legend_x_label_date'}	= "&#1498;&#1497;&#1512;&#1488;&#1514;";
$LANG{'graph_legend_nb_messages'}	= "&#1514;&#1493;&#1506;&#1491;&#1493;&#1492;&#1492; &#1512;&#1508;&#1505;&#1502;";
$LANG{'graph_legend_spam'}		= "&#1500;&#1489;&#1494; &#1512;&#1488;&#1493;&#1491;";
$LANG{'graph_legend_good'}		= "&#1503;&#1497;&#1511;&#1514;";
$LANG{'graph_legend_inoculations'}	= "&#1501;&#1497;&#1504;&#1493;&#1505;&#1497;&#1495;";
$LANG{'graph_legend_corpusfeds'}	= "&#1512;&#1490;&#1488;&#1502;&#1502;";
$LANG{'graph_legend_virus'}		= "&#1505;&#1493;&#1512;&#1497;&#1493;";
$LANG{'graph_legend_RBL'}		= "&#1492;&#1512;&#1493;&#1495;&#1513; &#1492;&#1502;&#1497;&#1513;&#1512;&#1489;";
$LANG{'graph_legend_blocklisted'}	= "&#1493;&#1501;&#1505;&#1495;&#1504;";
$LANG{'graph_legend_whitelisted'}	= "&#1501;&#1497;&#1504;&#1505;&#1493;&#1495;&#1502;";
$LANG{'graph_legend_nonspam'}		= "&#1503;&#1497;&#1511;&#1514;";
$LANG{'graph_legend_spam_misses'}	= "&#1500;&#1489;&#1494; &#1512;&#1488;&#1493;&#1491; &#1514;&#1493;&#1488;&#1496;&#1495;&#1492;";
$LANG{'graph_legend_falsepositives'}	= "&#1503;&#1497;&#1511;&#1514; &#1512;&#1488;&#1493;&#1491; &#1514;&#1493;&#1488;&#1496;&#1495;&#1492;";

1;
