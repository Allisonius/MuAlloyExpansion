pred test0{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
Protected = File0
inv10[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv10[]
}
}

run test1

