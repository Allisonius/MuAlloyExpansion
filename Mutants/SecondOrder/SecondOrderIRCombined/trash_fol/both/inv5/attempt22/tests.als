pred test0{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv5[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
inv5[]
}
}

run test1

pred test2{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File2
no Trash
no Trash' --loop state
Protected = File1 + File2
inv5[]
}
}

run test2

pred test3{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
no Protected
no Protected' --loop state
inv5[]
}
}

run test3

pred test4{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv5[]
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
}
}

run test5

pred test6{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
}
}

run test6

pred test7{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
Protected = File0
inv5[]
}
}

run test7

pred test8{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv5[]
}
}

run test8

pred test9{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0 + File1
no Protected
no Protected' --loop state
inv5[]
}
}

run test9

pred test10{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
}
}

run test10

