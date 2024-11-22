pred test0{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File1
Protected = File1
inv9[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File1
no Protected
no Protected' --loop state
inv9[]
}
}

run test1

