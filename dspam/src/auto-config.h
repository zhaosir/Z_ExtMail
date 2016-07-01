/* src/auto-config.h.  Generated from auto-config.h.in by configure.  */
/* src/auto-config.h.in.  Generated from configure.ac by autoheader.  */


#ifndef __auto_config_h
#define __auto_config_h


/* Defined if clamav is enabled */
#define CLAMAV 1

/* Configure Arguments */
#define CONFIGURE_ARGS " '--program-prefix=' '--prefix=/usr' '--exec-prefix=/usr' '--bindir=/usr/bin' '--sbindir=/usr/sbin' '--sysconfdir=/etc' '--datadir=/usr/share' '--includedir=/usr/include' '--libdir=/usr/lib' '--libexecdir=/usr/libexec' '--localstatedir=/var' '--sharedstatedir=/usr/com' '--mandir=/usr/share/man' '--infodir=/usr/share/info' '--enable-long-usernames' '--enable-syslog' '--enable-daemon' '--enable-clamav' '--enable-debug' '--enable-large-scale' '--enable-virtual-users' '--enable-external-lookup' '--enable-preferences-extension' '--disable-trusted-user-security' '--with-mysql-includes=/usr/include/mysql' '--with-mysql-libraries=/usr/lib64/mysql/' '--with-pgsql-libraries=/usr/lib' '--with-storage-driver=mysql_drv,hash_drv' '--with-dspam-home=/var/lib/dspam' '--with-dspam-owner=vuser' '--with-dspam-group=vgroup' '--with-dspam-home-owner=vuser' '--with-dspam-home-group=vgroup' '--with-dspam-mode=2511' '--with-logdir=/var/log/dspam' '--sysconfdir=/etc/dspam'"

/* Defined if daemon support is enabled */
#define DAEMON 1

/* Defined if debug output is enabled */
#define DEBUG 1

/* Defined if domain_scale is enabled */
/* #undef DOMAINSCALE */

/* Defined if external lookup is enabled */
#define EXT_LOOKUP 1

/* Define to 1 if you have the <arpa/inet.h> header file. */
#define HAVE_ARPA_INET_H 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the <errmsg.h> header file. */
#define HAVE_ERRMSG_H 1

/* Define to 1 if you have the <errno.h> header file. */
/* #undef HAVE_ERRNO_H */

/* Define to 1 if you have the `getpwnam_r' function. */
#define HAVE_GETPWNAM_R 1

/* Define to 1 if you have the `getpwuid_r' function. */
#define HAVE_GETPWUID_R 1

/* Define to 1 if you have the inet_ntoa_r function. */
/* #undef HAVE_INET_NTOA_R */

/* inet_ntoa_r() takes 2 args */
/* #undef HAVE_INET_NTOA_R_2 */

/* inet_ntoa_r() takes 3 args */
/* #undef HAVE_INET_NTOA_R_3 */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define if you have ISO C99 vararg macros */
#define HAVE_ISO_VARARGS 1

/* Define to 1 if you have the <lber.h> header file. */
/* #undef HAVE_LBER_H */

/* Define to 1 if you have the <ldap.h> header file. */
/* #undef HAVE_LDAP_H */

/* Define if you have liblber */
/* #undef HAVE_LIBLBER */

/* Define if you have libldap */
/* #undef HAVE_LIBLDAP */

/* Define to 1 if you have the `localtime_r' function. */
#define HAVE_LOCALTIME_R 1

/* Define to 1 if you have the <math.h> header file. */
#define HAVE_MATH_H 1

/* Define to 1 if you have the `memcpy' function. */
#define HAVE_MEMCPY 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `memset' function. */
#define HAVE_MEMSET 1

/* Define to 1 if you have the <mysqld_error.h> header file. */
#define HAVE_MYSQLD_ERROR_H 1

/* Define to 1 if you have the <mysql.h> header file. */
#define HAVE_MYSQL_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#define HAVE_NETINET_IN_H 1

/* Defined if PQfreemem is supported */
/* #undef HAVE_PQFREEMEM */

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strcasestr' function. */
#define HAVE_STRCASESTR 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strlcpy' function. */
/* #undef HAVE_STRLCPY */

/* Define to 1 if you have the `strsep' function. */
#define HAVE_STRSEP 1

/* Define to 1 if you have the `strtok_r' function. */
#define HAVE_STRTOK_R 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#define HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Defined if home directory support is enabled */
/* #undef HOMEDIR */

/* Defined if large_scale is enabled */
#define LARGESCALE 1

/* Defined if BNR Debug is enabled */
/* #undef LIBBNR_DEBUG */

/* Logfile */
/* #undef LOGFILE */

/* Defined if long usernames is enabled */
#define LONG_USERNAMES 1

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#define LT_OBJDIR ".libs/"

/* Defined if mysql4-initialization is enabled */
#define MYSQL4_INITIALIZATION 1

/* Name of package */
#define PACKAGE "dspam"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "dspam-devel@lists.sourceforge.net"

/* Define to the full name of this package. */
#define PACKAGE_NAME "dspam"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "dspam 3.10.2"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "dspam"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "3.10.2"

/* Defined if storage driver supports preferences extension */
#define PREFERENCES_EXTENSION 1

/* Defined if split configuration is enabled */
/* #undef SPLIT_CONFIG */

/* Define if using a single, statically linked storage driver */
/* #undef STATIC_DRIVER */

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* Defined if trusted user security are enabled */
/* #undef TRUSTED_USER_SECURITY */

/* Defined if LDAP is found */
/* #undef USE_LDAP */

/* Defined if syslog is enabled */
#define USE_SYSLOG 1

/* Defined if verbose debug output is enabled */
/* #undef VERBOSE */

/* Version number of package */
#define VERSION "3.10.2"

/* Defined if homedir dotfiles is enabled */
#define VIRTUAL_USERS 1

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
/* #undef inline */
#endif


#endif /* !__auto_config_h */

