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
my $i=1;
my $j=4;

##random $i=int(rand(200));
$j=int(rand(200));
while($i==$j){
    $j=int(rand(200));		}
print "$i $j \n";
##merge two vertice
@{$vertice{$i}}=( @{$vertice{$i}},@{$vertice{$j}});
delete $vertice{$j};
my %merge=();
$merge{$i}=$j;

###delete self loop
@{$vertice{$i}}= grep { 
	$_!= merge{$i};
	} @{$vertice{$i}};
	
###count