pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv7[]
}
}

run test2

pred test3{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File1 + File2->File1 + File2->File2
no Trash
no Trash' --loop state
Protected = File2
inv7[]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
Trash = File1
no Protected
no Protected' --loop state
inv7[]
}
}

run test4

