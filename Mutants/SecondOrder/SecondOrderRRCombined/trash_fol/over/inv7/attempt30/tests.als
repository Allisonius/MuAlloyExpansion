pred test0{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test0

pred test1{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File2
Trash = File1
Protected = File1
isLinked[File2]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File1
inv7[]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
Protected = File0 + File1
isLinked[File1]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test5

pred test6{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test6

pred test7{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File1
Protected = File0 + File1
isLinked[File1]
}
}

run test7

pred test8{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
}
}

run test8

pred test9{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
isLinked[File0]
}
}

run test9

pred test10{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
Trash = File0
Protected = File1
isLinked[File1]
}
}

run test10

pred test11{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File0 + File1
Protected = File1
inv7[]
}
}

run test11

pred test12{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
}
}

run test12

pred test13{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
}
}

run test13

pred test14{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
inv7[]
}
}

run test14

pred test15{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test15

pred test16{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
inv7[]
}
}

run test16

pred test17{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
}
}

run test17

pred test18{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
}
}

run test18

pred test19{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test19

pred test20{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
Protected = File1
inv7[]
}
}

run test20

pred test21{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv7[]
}
}

run test21

pred test22{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test22

pred test23{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test23

pred test24{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test24

pred test25{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test25

pred test26{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0 + File1->File1
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test26

