use warnings;
use strict;




while(<KM>){
	chomp $_;
	my @temp=split(" ",$_);
	my @number=grep {$_=~m/\d+/} @temp;
	$vertice{shift @number}=\@number;
}


#@{$vertice[0]}=( @{$vertice[0]},@{$vertice[3]});
#delete $vertice[3];

print ${$vertice{1}}, "\n";


#my %seen = ();
#@{$vertice[0]}= grep {#
#	!$seen{$_ }++;
#	} @{$vertice[0]};

#print "@{$vertice[0]} \n";
