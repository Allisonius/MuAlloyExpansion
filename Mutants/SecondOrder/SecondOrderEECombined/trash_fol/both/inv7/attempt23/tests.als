pred test0{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv7[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
inv7[]
}
}

run test1

