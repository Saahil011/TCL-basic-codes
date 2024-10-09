proc get_modified_time {file_path} {
    if {[file exists $file_path] == 0} {
        error "file does not exist: $file_path" 
    }
    return [file mtime $file_path]
}

proc compare {file1 file2} {
    set time1 [get_modified_time $file1]
    set time2 [get_modified_time $file2]'
    if {$time1 > $time2} {
        puts "$file1 was modified more recently than $file2"
    } elseif {$time1 < $time2} {
        puts "$file2 was modified more recently than $file1"
    } else {
        puts "$file1 and $file2 were modified at the same time "
    }
}

puts "Enter path of first file: "
flush stdout 
gets stdin file1

puts "Enter path of second file: "
flush stdout 
gets stdin file2

compare $file1 $file2