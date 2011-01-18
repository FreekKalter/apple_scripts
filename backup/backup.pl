#!/usr/bin/perl

use Getopt::Long;
use strict;
use warnings;
use Sys::Syslog;

openlog("backup: ", "pid", "LOG_LOCAL6" );
sleep(30); #als de laptop uit slaapstand komt wacht dertig seconden om airport verbinding te laten maken anders gaat netwerk check fout

my $client = "/Users/freekkalter/";
my $server="fkalter\@192.168.2.4:/home/fkalter/macBackup/";
my $server_external = "fkalter\@kalter.dnsalias.org:/home/fkalter/macBackup/";
my $excludes="/Users/freekkalter/Library/Scripts/backup/excludes";
my $sshkey="/Users/freekkalter/Library/Scripts/backup/id_rsa";
`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;

my $rsync = "/usr/local/bin/rsync";
my $backup_options = "--verbose --stats --compress --recursive --times --perms --links --delete --exclude-from=$excludes --delete-excluded --human-readable";
my $restore_options = " --verbose --stats --compress --recursive --times --perms --links --human-readable";

my $network ='';
my $restore = '';
if(GetOptions("network=s" => \$network,
				"restore" => \$restore)){
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
}else{print "Usage backup.pl [--restore, --network networkname]\n";}
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