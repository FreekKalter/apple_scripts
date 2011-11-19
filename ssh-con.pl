#!/usr/bin/perl
use strict;
use warnings;

`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;
my $server = $ARGV[0];
my $usage = "ssh-con servername, ssh-con add type name adress, ssh-con remove name;";

#read servers from config file
open(my $fh, "<", "ssh-config") or die "cannot open  config file: $!";
my (%vms, %local, %extern);
my %server_sorts =  ('vms', \%vms, 'local', \%local, 'extern', \%extern);

my $server_sort;
while(my $line = <$fh>){
   if($line =~ m/^#(\w*)\s(.*)/){
      $server_sort = $server_sorts{$1};
   }elsif($line =~ m/(\w*)\s(.*)/){
      $server_sort->{$1} = $2;
   }
}
close $fh;

if($ARGV[0] eq 'list'){
   print "Known servers: " . join(', ',  keys(%vms), keys(%extern), keys(%local)) . ".\n";
   exit;
}
#$ARGV[0] add
#$ARGV[1] local
#$ARGV[2] amsterdam
#$ARGV[3] 192.168.2.50
my $noa = scalar(@ARGV);
if( $noa > 1){
   if($ARGV[0] eq 'add'){
      if($noa != 4){
         print $usage;
         exit;
      }
      my $overwritten = undef;
      foreach $server_sort (keys(%server_sorts)){
         if(exists($server_sorts{$server_sort}->{$ARGV[2]})){
            print "Server exists as a $server_sort, do you want to overwrite it with servertype $ARGV[1]? (y/n)";
            my $ans = <STDIN>;
            chomp $ans;
            if($ans eq 'n'){
               print "Nothing is done.\n";
               exit;
            }elsif($ans eq 'y'){
               $server_sorts{$ARGV[1]}->{$ARGV[2]} = $ARGV[3];
               print "$ARGV[2] succesfully overwritten with: $ARGV[3]\n";
               $overwritten = 1;
            }else{
               print 'Please answer with y/n\n';
               exit;
            }
         }
      }
      if(!$overwritten){
         $server_sorts{$ARGV[1]}->{$ARGV[2]} = $ARGV[3];
         print "$ARGV[2] succesfully saved with: $ARGV[3]\n";
      }

   }

   if($ARGV[0] eq 'remove'){
      if($noa != 2){
         print $usage;
         exit;
      }
      my $found = undef;
      foreach $server_sort (keys(%server_sorts)){
         if(exists($server_sorts{$server_sort}->{$ARGV[1]})){
            delete $server_sorts{$server_sort}->{$ARGV[1]};
            print "$ARGV[1] deleted\n";
            $found =1;
         }
      }
      if(!$found){
         print "No such server!\n";
         print "Known servers: " . join(', ',  keys(%vms), keys(%extern), keys(%local)) . ".\n";
      }
   }

   open($fh, ">", "ssh-config") or die "cannot open  config file: $!";
   foreach $server_sort (keys(%server_sorts)){
      print $fh "#$server_sort\n";
      foreach $server ( keys( %{$server_sorts{$server_sort}})){
         print $fh "$server $server_sorts{$server_sort}->{$server}\n"; 
      }
   }
   close $fh;
   exit;
}

my $command = "ssh fkalter\@";

#locale virtual machines
if(exists($vms{$server})){
   exec($command . $server);
}

#servers on local network
if(exists($local{$server})){

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
if(exists($extern{$server})){
   $command =  "ssh ec2-user\@";
   exec($command . $extern{$server});
}

print "$server is not a known server, or option.\n";
print "Known servers: " . join(', ',  keys(%vms), keys(%extern), keys(%local)) . ".\n";
