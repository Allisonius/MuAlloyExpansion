pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2
Trash = File1
Protected = File2
inv6[]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2
no Trash
no Trash' --loop state
Protected = File1 + File2
inv6[]
}
}

run test1

pred test2{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1
Trash = File1
Protected = File2
inv6[]
}
}

run test2

pred test3{
some disj File0: File {
File = File0
no link
Trash = File0
Protected = File0
inv6[]
}
}

run test3

