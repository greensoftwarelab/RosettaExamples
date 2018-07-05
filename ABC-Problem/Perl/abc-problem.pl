#!/usr/bin/perl
use warnings;
use strict;

sub can_make_word {
    my ($word, @blocks) = @_;
    $_ = uc join q(), sort split // for @blocks;
    my %blocks;
    $blocks{$_}++ for @blocks;
    return _can_make_word(uc $word, %blocks)
}


sub _can_make_word {
    my ($word, %blocks) = @_;
    my $char = substr $word, 0, 1, q();

    my @candidates = grep 0 <= index($_, $char), keys %blocks;
    for my $candidate (@candidates) {
        next if $blocks{$candidate} <= 0;
        local $blocks{$candidate} = $blocks{$candidate} - 1;
        return 1 if q() eq $word or _can_make_word($word, %blocks);
    }
    return
}

my @blocks1 = qw(BO XK DQ CP NA GT RE TG QD FS JW HU VI AN OB ER FS LY PC ZM);
my @words = qw(A BARK BoOK TrEAT COmMoN SQUAD conFUsE);
for my $word (@words) {
    if(can_make_word($word, @blocks1)) {
        print $word, ": true", "\n";
    }
    else {
        print $word, ": false", "\n";
    }
}
