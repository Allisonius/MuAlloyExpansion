pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File1->File2 + File2->File0
Trash = File2
Protected = File1
isLink[File2]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File0
Protected = File0
isLink[File1]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
isLink[File0]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
Trash = File1
Protected = File1
isLink[File1]
}
}

run test3

