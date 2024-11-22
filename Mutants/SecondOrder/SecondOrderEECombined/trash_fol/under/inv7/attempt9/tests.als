pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File2 + File2->File2
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File1
inv7[]
}
}

run test2

