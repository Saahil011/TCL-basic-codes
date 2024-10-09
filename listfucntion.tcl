puts "Enter the list"
flush stdout 
gets stdin list1

set list1 [split $list1]

#append
puts "Enter the elements to be appended in the list: "
flush stdout 
gets stdin list2
set list2 [split $list2]

foreach k $list2 {
    lappend list1 $k
}

puts "After append the list is $list1"

#traverse 

puts "Traverse: "
foreach i $list1 {
    puts "$i"
}

#conacte

puts "Enter the list to be conactenatied:"
flush stdout 
gets stdin list3

set list3 [concat $list1 $list3]

puts "$list3"