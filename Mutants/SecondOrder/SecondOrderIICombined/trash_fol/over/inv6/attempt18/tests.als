pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File0
Trash = File1 + File2
no Protected
no Protected' --loop state
inv6[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2
no Trash
no Trash' --loop state
Protected = File1 + File2
inv6[]
}
}

run test1

pred test2{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File0
Trash = File1
Protected = File2
inv6[]
}
}

run test2

pred test3{
some disj File0: File {
File = File0
no link
no Trash
no Trash' --loop state
Protected = File0
inv6[]
}
}

run test3

pred test4{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File0
Trash = File2
Protected = File1 + File2
inv6[]
}
}

run test4

pred test5{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv6[]
}
}

run test5

pred test6{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File0
Trash = File1
Protected = File2
inv6[]
}
}

run test6

