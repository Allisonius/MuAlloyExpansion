pred test0{

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv1[]

}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
}
}

run test1

pred test2{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
no link
Trash = File1 + File2
Protected = File2
inv1[]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
}
}

run test3

pred test4{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv1[]
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
}
}

run test5

pred test6{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
no Protected
no Protected' --loop state
inv1[]
}
}

run test6

