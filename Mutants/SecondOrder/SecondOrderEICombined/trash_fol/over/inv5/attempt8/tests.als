pred test0{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
no Protected
no Protected' --loop state
inv5[]
}
}

run test0

pred test1{
some disj File0: File {
File = File0
no link
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv5[]
}
}

run test1

