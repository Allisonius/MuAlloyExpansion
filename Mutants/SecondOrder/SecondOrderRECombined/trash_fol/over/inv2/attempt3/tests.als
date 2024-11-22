pred test0{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
Protected = File0
inv2[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0 + File1
Protected = File1
inv2[]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv2[]
}
}

run test2

pred test3{

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv2[]

}

run test3

