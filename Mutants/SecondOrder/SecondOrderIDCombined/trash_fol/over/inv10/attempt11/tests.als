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
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv10[]
}
}

run test1

