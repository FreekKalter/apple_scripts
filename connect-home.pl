#!/usr/bin/perl
`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;
$command = "ssh fkalter\@";
if($current_network eq "KalterExperia"){
	$command .= "192.168.2.4";
	exec ($command);
}else{
	$command .= "kalter.dnsalias.org";
	exec ($command)
}