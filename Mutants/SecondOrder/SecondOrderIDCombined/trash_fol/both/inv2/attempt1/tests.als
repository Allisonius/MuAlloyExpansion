pred test0{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv2[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
no link
Trash = File1
Protected = File2
inv2[]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
no link
Trash = File0
Protected = File0
inv2[]
}
}

run test2

