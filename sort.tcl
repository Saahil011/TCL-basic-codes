proc compare {a b} {
    if {$a < $b} {
        return -1
    } elseif {$a > $b} {
        return 1
    } else {
        return 0
    }
}

puts "Enter the list"
flush stdout
gets stdin list

set new_list [split $list]

set sorted [lsort -command compare $new_list]


puts "$sorted"