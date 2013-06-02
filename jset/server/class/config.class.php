<?php
/*
 * jset  1.0 - jset
 * Copyright (c) 2010, Shuki Shukrun (shukrun.shuki at gmail.com).
 * Dual licensed under the MIT and GPL licenses
 * http://www.opensource.org/licenses/mit-license.php
 * http://www.gnu.org/licenses/gpl.html
 * Date: 2010-01-01
 */

class config
{
	const jxset = '../jxset/';
	const rel_path = '';
	const dbhost = '127.0.0.1';
	const dbport = '3306';
	const dbserver = 'mysql';
	const dbcharset = 'utf8';
	const dbname = 'paamonim';
	const dbuser   = 'root';
	const dbpassword = ''; 
		
	const dbfetchStyle = PDO::FETCH_OBJ;
	const dberrorMode = PDO::ERRMODE_EXCEPTION;
	const limit = 100;
	const upload_directory = '../../uploads/';
	const hosts_table = 'jset_host';
	
	const mysqldump_prefix = '';
	const errorLogFile = 'log/error_log_file.txt';
}
