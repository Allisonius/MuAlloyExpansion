pred test0{
some disj File0: File {
File = File0
no link
no Trash
no Trash' --loop state
Protected = File0
inv6[]
}
}

run test0

pred test1{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv6[]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
no link
Trash = File0
no Protected
no Protected' --loop state
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

