use warnings;
use strict;

my %vertice=();
open (KM,"<","kargerMinCut.txt");

while(<KM>){
	chomp $_;
	my @temp=split(" ",$_);
	my @number=grep {$_=~m/\d+/} @temp;
	$vertice{shift @number}=\@number;
}
close KM;
my $i=0; ##keep
my $j=0; ##to delete
my @k=(); ##to collect

for (my $n=0;$n<200;$n++){##random
    $i=int(rand(200))+1;
    $j=int(rand(200))+1;
    while (grep {$_ eq $i} @k){
        $i=int(rand(200))+1;  	        }
    while(grep {$_ eq $j} @k || $i==$j){
        $j=int(rand(200))+1;  
    }
    
    push @k, $j;
    print "$i $j \n";
    ##merge two vertice
#    @{$vertice{$i}}=( @{$vertice{$i}},@{$vertice{$j}});
#    delete $vertice{$j};
 #   my %merge=();
 #   $merge{$i}=$j;

###delete self loop
#    @{$vertice{$i}}= grep { 
#	$_!= $merge{$i};
#	} @{$vertice{$i}};
	
###count
#    print "@{$vertice{$i}} \n";
}