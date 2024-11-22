pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
no Protected
no Protected' --loop state
inv10[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File1 + File2->File2
Trash = File0 + File2
Protected = File1 + File2
inv10[]
}
}

run test1

