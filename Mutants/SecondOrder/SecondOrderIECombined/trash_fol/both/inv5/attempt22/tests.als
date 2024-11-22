pred test0{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv5[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
no Protected
no Protected' --loop state
inv5[]
}
}

run test1

