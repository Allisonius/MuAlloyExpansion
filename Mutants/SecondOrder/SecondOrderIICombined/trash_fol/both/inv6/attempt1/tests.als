pred test0{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File1
no Protected
no Protected' --loop state
inv6[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
no link
no Trash
no Trash' --loop state
Protected = File1
inv6[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0
Protected = File1
inv6[]
}
}

run test2

