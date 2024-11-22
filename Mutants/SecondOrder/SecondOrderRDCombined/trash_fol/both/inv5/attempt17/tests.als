pred test0{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
no Protected
no Protected' --loop state
inv5[]
}
}

run test0

pred test1{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv5[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv5[]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File1
inv5[]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File0 + File1
inv5[]
}
}

run test4

