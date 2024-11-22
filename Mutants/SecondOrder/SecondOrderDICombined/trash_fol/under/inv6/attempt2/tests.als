pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv6[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File1 + File1->File2 + File2->File0 + File2->File1 + File2->File2
Trash = File2
Protected = File2
inv6[]
}
}

run test1

