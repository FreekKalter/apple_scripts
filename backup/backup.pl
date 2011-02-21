#!/usr/bin/perl

use Getopt::Long;
use strict;
use warnings;
use Sys::Syslog;

openlog("backup: ", "pid", "LOG_LOCAL6" );
my $network ='';
my $restore = '';
my $timeout = 0;
if(!GetOptions("network=s" => \$network, "restore" => \$restore, "timeout:i" => \$timeout)){
	print "Usage backup.pl [--restore, --network networkname]\n";
	die;			
}
if($timeout){
	print "timeout: $timeout\n";
	sleep($timeout);
}

my $client = "/Users/freekkalter/";
my $server="fkalter\@192.168.2.4:/home/fkalter/macBackup/";
my $server_external = "fkalter\@kalter.dnsalias.org:/home/fkalter/macBackup/";
my $excludes="/Users/freekkalter/Library/Scripts/backup/excludes";
my $sshkey="/Users/freekkalter/Library/Scripts/backup/id_rsa";
`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;

my $rsync = "/usr/local/bin/rsync";
my $options = "--verbose --ignore-errors --stats --compress --recursive --times --perms --links --human-readable";
my $backup_options =  "$options --delete --exclude-from=$excludes --delete-excluded";
my $restore_options = "$options";

if($network){
	if($network eq $current_network){
		if($restore){
			call_it("$rsync -e \"ssh -i $sshkey\" $restore_options $server $client", "restore");
		}else{
			call_it("$rsync -e \"ssh -i $sshkey\" $backup_options $client $server","backup");
		}
	}else{syslog("notice", "Not on $network\n");}
}else{if($restore){
	call_it("$rsync -e \"ssh -i $sshkey\" $restore_options $server_external $client", "restore");
}else{
	call_it("$rsync -e \"ssh -i $sshkey\" $backup_options $client $server_external", "backup");
}}				

closelog();

sub call_it{
	my ($command, $action) = @_;
	my $ret_code;
	syslog("notice", "$action started\n");
	$ret_code = system($command);
	if($ret_code == 0){
		syslog("notice", "$action succeeded\n");
	}else{
		syslog("notice", "$action failed with code: $ret_code\n");
	}
}