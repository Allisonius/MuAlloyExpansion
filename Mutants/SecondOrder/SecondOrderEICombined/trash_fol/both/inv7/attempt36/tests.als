pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test0

