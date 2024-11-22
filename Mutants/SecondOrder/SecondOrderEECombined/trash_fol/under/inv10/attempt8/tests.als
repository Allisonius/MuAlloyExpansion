pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File1->File2
Trash = File0 + File1
Protected = File2
inv10[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
Protected = File1
inv10[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File0
Protected = File1
inv10[]
}
}

run test2

