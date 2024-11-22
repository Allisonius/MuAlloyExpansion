pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File1 + File1->File2 + File2->File2
Trash = File0 + File2
Protected = File1 + File2
inv10[]
}
}

run test0

