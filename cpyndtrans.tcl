proc cpy_trans {source destination} {
    if {[file exists $source]==0} {
        puts "$source does not exists"
    }
    
    set in [open $source r]
    set out [open $destination w]
    fconfigure $out -translation auto
    
    while {[gets $in live] >=0} {
        puts $out $live
    } 
    close $in
    close $out

    puts "File copied and translated to native format : $destination"
}




puts "Enter the source file path: "
flush stdout 
gets stdin source

puts "Enter the destination file path: "
flush stdout 
gets stdin destination

cpy_trans $source $destination