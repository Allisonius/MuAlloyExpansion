pred test0{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
Protected = File0
inv10[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File0 + File1->File1
Trash = File2
no Protected
no Protected' --loop state
inv10[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
no Protected
no Protected' --loop state
inv10[]
}
}

run test2

