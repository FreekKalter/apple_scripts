#!/usr/bin/perl
`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;
my $server = $ARGV[0];
$server ||= "Amsterdam"; #if not defined, define with Amsterdam

$command = "ssh fkalter\@";
if($current_network eq "KalterExperia"){
	$command .= $server;
	exec ($command);
}else{
	$command .= "kalter.dnsalias.org";
	exec ($command)
}