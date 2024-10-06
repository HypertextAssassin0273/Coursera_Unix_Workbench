echo {0..9}
echo {a..e}
echo {W..Z}

echo a{0..4}
echo b{0..4}c

echo {1..3}{A..C} # cartesian product

echo {{1..3},4}
echo {{1..3},{a..c}}
echo {Who,What,Why,When,How}?

start=4 end=9
echo {$start..$end}
eval echo {$start..$end} # eval expands the variables

# note: no spaces allowed in braces
