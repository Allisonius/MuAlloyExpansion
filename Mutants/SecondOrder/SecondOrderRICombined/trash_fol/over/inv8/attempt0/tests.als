pred test0{
some disj File1, File0: File {
File = File0 + File1
no link
no Trash
no Trash' --loop state
Protected = File1
inv8[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
inv8[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv8[]
}
}

run test2

pred test3{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv8[]
}
}

run test3

pred test4{

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv8[]

}

run test4

