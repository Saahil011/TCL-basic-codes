set num 1
set res 1
for {set i 1} {$i<=10} {incr i} {
    set res [expr $i*$res]
    puts -nonewline "$i"
    if {$i == 10} {
        puts -nonewline "="
    } else {
        puts -nonewline "X"
    }
}

puts "$res"