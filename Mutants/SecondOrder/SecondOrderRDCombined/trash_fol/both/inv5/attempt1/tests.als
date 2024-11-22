pred test0{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv5[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File2
Trash = File0 + File1 + File2
Protected = File2
inv5[]
}
}

run test1

