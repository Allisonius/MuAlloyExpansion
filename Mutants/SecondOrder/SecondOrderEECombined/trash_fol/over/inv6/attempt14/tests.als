pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File1
Protected = File1
inv6[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
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
link = File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv6[]
}
}

run test2

