puts "Enter the number: "
gets stdin n 

set num [expr $n+0]

set fact 1

for {set i 1} {$i<=$num} {incr i} {

    set fact [expr $fact*$i]
}

puts "$fact"