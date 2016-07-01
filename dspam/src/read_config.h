/* $Id: read_config.h,v 1.95 2011/06/28 00:13:48 sbajic Exp $ */

/*
 DSPAM
 COPYRIGHT (C) 2002-2012 DSPAM PROJECT

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License as
 published by the Free Software Foundation, either version 3 of the
 License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU Affero General Public License for more details.

 You should have received a copy of the GNU Affero General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

#ifndef _READ_CONFIG_H
#define _READ_CONFIG_H

#ifdef HAVE_CONFIG_H
#include <auto-config.h>
#endif

#include "config_shared.h"
#include "libdspam.h"
#include "pref.h"

config_t read_config (const char *path);
int configure_algorithms (DSPAM_CTX * CTX);

agent_pref_t pref_config(void);
config_t agent_config;

#endif /* _READ_CONFIG_H */
