#!/usr/bin/perl
`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;
my $server = $ARGV[0];
my @locale_vm = qw(paris);
my @locale_servers = qw(amsterdam berlin);
my %external_servers = qw(ec2 ec2-79-125-93-58.eu-west-1.compute.amazonaws.com);

$server ||= "amsterdam"; #if not defined, define with Amsterdam

$command = "ssh fkalter\@";

#locale virtual machines
if( grep $_ eq $server, @locale_vm){
   exec($command . $server);
}

#servers on local network
if( grep $_ eq $server, @locale_servers){

   if($current_network eq "H220N514DC5"){
      $command .= $server;
      if($server eq "amsterdam") { 
         $command .= " -p 34729";
      }
      exec ($command);
   }else{
      $command .= "kalter.dnsalias.org";
      exec ($command)
   }
}

#servers external network (amazon ec2)
if(exists($external_servers{$server})){
   $command =  "ssh ec2-user\@";
   exec($command . $external_servers{$server});
}

print "$server is not a known server.\n";
print "Known servers: " . join(', ', @locale_vm , @locale_servers, keys(%external_servers)) . ".\n";
