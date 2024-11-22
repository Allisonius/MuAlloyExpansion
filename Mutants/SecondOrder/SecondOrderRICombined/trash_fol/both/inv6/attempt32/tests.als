pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1
Trash = File1
Protected = File1
inv6[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
inv6[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv6[]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File1
inv6[]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0
Trash = File1
Protected = File1
inv6[]
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
Protected = File1
inv6[]
}
}

run test5

pred test6{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv6[]
}
}

run test6

pred test7{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
Trash = File1
Protected = File1
inv6[]
}
}

run test7

pred test8{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
Trash = File1
Protected = File1
inv6[]
}
}

run test8

pred test9{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0 + File1->File1
Trash = File1
Protected = File1
inv6[]
}
}

run test9

pred test10{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File1
Protected = File1
inv6[]
}
}

run test10

pred test11{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
Protected = File1
inv6[]
}
}

run test11

pred test12{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
Protected = File1
inv6[]
}
}

run test12

pred test13{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv6[]
}
}

run test13

pred test14{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
inv6[]
}
}

run test14

pred test15{

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv6[]

}

run test15

