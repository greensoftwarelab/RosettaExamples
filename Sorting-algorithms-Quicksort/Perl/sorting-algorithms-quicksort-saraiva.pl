sub quick_sort {
    return @_ if @_ < 2;
    my $p = splice @_, int rand @_, 1;
    quick_sort(grep $_ < $p, @_), $p, quick_sort(grep $_ >= $p, @_);
}

my @list = (1,2,9,4,6);
@a = quick_sort @list;
$, = ',';
print "[";
print @a;
print "]\n";
