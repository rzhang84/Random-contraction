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
##merge two vertice
#@{$vertice[0]}=( @{$vertice[0]},@{$vertice[3]});
#delete $vertice[3];

print ${$vertice{1}}, "\n";

###delete self loop
#my %seen = ();
#@{$vertice[0]}= grep {#
#	!$seen{$_ }++;
#	} @{$vertice[0]};

#print "@{$vertice[0]} \n";
###count