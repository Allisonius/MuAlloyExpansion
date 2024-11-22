pred test0{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File2
no Trash
no Trash' --loop state
Protected = File0 + File1 + File2
inv5[]
}
}

run test0

