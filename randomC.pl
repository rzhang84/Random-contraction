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
@{$vertice{1}}=( @{$vertice{1}},@{$vertice{4}});
delete $vertice{4};

print "@{$vertice{1}}", "\n";

###delete self loop
my %seen = ();
@{$vertice{1}}= grep { 
	!$seen{$_ }++;
	} @{$vertice{1}};

@{$vertice{1}}= grep { 
	$_!= '4';
	} @{$vertice{1}};
	
print "@{$vertice{1}} \n";
###count