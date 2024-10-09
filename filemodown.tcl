puts "Enter the path for file 1"
flush stdout
gets stdin file1

puts "Enter the path for file 2"
flush stdout
gets stdin file2

if ([file exists $file1] == 0){
    puts "$file1 does not exists"
} else {
    set time1 [file mtime $file1]
}

if (![file exists $file2]){
    puts "$file2 does not exists"
} else {
    set time2 [file mtime $file2]
}

if 