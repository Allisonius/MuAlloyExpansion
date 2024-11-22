pred test0{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
Protected = File0
inv1[]
}
}

run test0

pred test1{

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv1[]

}

run test1

pred test2{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv1[]
}
}

run test2

pred test3{
some disj File0: File {
File = File0
no link
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv1[]
}
}

run test3

