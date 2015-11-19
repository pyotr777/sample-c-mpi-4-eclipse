#!/usr/bin/perl

use strict;
use warnings;

my @pids;
my @procs;
my $print=0;
my @words;
@pids=`ps ax | grep "monitor_para" | awk '{ print \$1 }'`;
print @pids;
while (1) {
#	@procs=`ps ax | egrep -i 'paraprof|c_mpi' | grep -v "c_mpi.o" | grep -v "grep"`;
#	@procs=`ps ax | egrep -i '_para|c_mpi'`;
	@procs=`ps ax | egrep -iv 'ps ' | grep  -v "grep"`;
	for my $proc (@procs) {
		$print=1;
		chomp($proc);
		for my $pid (@pids) {
			chomp($pid);
			if ($proc =~ /^$pid /) {
				$print=0;
				last;
			}
		}
		if ($print==1) {
			@words = split(/ /,$proc);
			print "\n\$ $proc";
			push @pids, $words[0];
		}
	}
}
