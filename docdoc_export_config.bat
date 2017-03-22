@echo off
rem =======  Database connection settings  ==================================

rem DB User, Password and Role for connection
rem
rem This user must have enought privileges for retrieving data from required
rem tables.
rem For more information see readme.MD
rem
set dbservername=MW\MEDWORK
set dbname=MedworkData
set dbuser=sa
set dbpass=1


rem Full path to 'sqlcmd' tool of MS SQL - command line client for MS SQL
set "sql_cmd_path=C:\Program Files\Microsoft SQL Server\100\Tools\Binn\"


rem ===========  Upload settings  ===========================================

rem FTP host & port, user and password settings
rem FTP host examples:
rem   ftphost=ftp.docdoc.ru
rem   ftphost=ftp.docdoc.ru:21
set ftphost=ftp.docdoc.ru
set ftpuser=abc
set ftppass=QSwEFp7c
rem Directory is where all files will be saved
set ftpstartdir=
rem path to winscp ftp client
set "winscppath=winscp\"
rem proxy settings for FTP connection
rem set "winscpsettings=ProxyHost^=testhost ProxyUsername^=testuser FtpProxyLogonType^=6 ProxyPasswordEnc^=passwordhash"
rem proxy settings for webDav connection
rem set "winscpsettings=ProxyMethod=3 ProxyHost^=testhost ProxyUsername^=testuser ProxyPasswordEnc^=passwordhash"
set ftplogpath=ftp.log
rem Accept ftp or webdav value for using approciate client protocol
set uploadmode=ftp



rem =======  Internal variables (DO NOT MODIFY THEM if not sure)  ===========

rem Subpath to sql commandlets
set sqlpath=.\sql\
rem Subpath where to put export files
set exportpath=.\export\
rem List of subnames of sql commandlets (and corresponding export files)
rem set exportfiles=organizations departments doctors day_schedule_patterns day_schedule_corrections busy_slots prerecords blocked_time events
set exportfiles=organizations departments doctors day_schedule_patterns day_schedule_corrections busy_slots prerecords blocked_time events
