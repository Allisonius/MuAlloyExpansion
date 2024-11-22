pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv7[]
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
inv7[]

}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0 + File1
Protected = File1
inv7[]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File1
Trash = File1
Protected = File1
inv7[]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1
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
link = File1->File0 + File1->File1
Trash = File1
Protected = File0 + File1
inv7[]
}
}

run test6

pred test7{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
}
}

run test7

pred test8{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
inv7[]
}
}

run test8

pred test9{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv7[]
}
}

run test9

pred test10{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File2 + File2->File1
Trash = File0 + File1
Protected = File2
inv7[]
}
}

run test10

pred test11{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File1->File2
Trash = File0 + File1
Protected = File2
inv7[]
}
}

run test11

pred test12{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
}
}

run test12

pred test13{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test13

pred test14{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
Protected = File1
inv7[]
}
}

run test14

pred test15{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File1 + File1->File2 + File2->File1
Trash = File0 + File2
Protected = File1 + File2
inv7[]
}
}

run test15

pred test16{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File0 + File1->File2 + File2->File2
Trash = File0 + File2
Protected = File1 + File2
inv7[]
}
}

run test16

pred test17{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
no Protected
no Protected' --loop state
inv7[]
}
}

run test17

pred test18{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File0 + File1->File1 + File1->File2 + File2->File1
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test18

pred test19{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0 + File1
Protected = File1
inv7[]
}
}

run test19

pred test20{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test20

pred test21{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File2 + File2->File0 + File2->File2
Trash = File1 + File2
no Protected
no Protected' --loop state
inv7[]
}
}

run test21

pred test22{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File1 + File1->File2 + File2->File1
Trash = File0 + File2
Protected = File1 + File2
inv7[]
}
}

run test22

pred test23{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test23

pred test24{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File2->File1 + File2->File2
no Trash
no Trash' --loop state
Protected = File1 + File2
inv7[]
}
}

run test24

pred test25{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File2 + File2->File1
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test25

pred test26{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File1->File2 + File2->File1
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test26

pred test27{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File1 + File1->File2
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test27

pred test28{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File0
Protected = File1
inv7[]
}
}

run test28

pred test29{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File1
inv7[]
}
}

run test29

pred test30{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File0 + File0->File1 + File1->File0 + File1->File2 + File2->File1
Trash = File0 + File2
Protected = File1 + File2
inv7[]
}
}

run test30

pred test31{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
}
}

run test31

pred test32{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test32

pred test33{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
}
}

run test33

pred test34{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File1->File1 + File1->File2 + File2->File0 + File2->File1
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test34

pred test35{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File1
Protected = File1
}
}

run test35

pred test36{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File2 + File1->File1 + File1->File2 + File2->File0 + File2->File1
Trash = File1 + File2
Protected = File2
inv7[]
}
}

run test36

pred test37{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test37

pred test38{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
no Protected
no Protected' --loop state
inv7[]
}
}

run test38

pred test39{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File1
Protected = File1
inv7[]
}
}

run test39

pred test40{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test40

pred test41{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
inv7[]
}
}

run test41

pred test42{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
}
}

run test42

pred test43{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv7[]
}
}

run test43

pred test44{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File0 + File1
inv7[]
}
}

run test44

pred test45{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test45

pred test46{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
Protected = File1
inv7[]
}
}

run test46

pred test47{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv7[]
}
}

run test47

pred test48{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File1
Protected = File1
inv7[]
}
}

run test48

pred test49{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test49

pred test50{
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File0->File1 + File1->File0 + File1->File2 + File2->File1 + File2->File2
Trash = File0 + File2
Protected = File1 + File2
inv7[]
}
}

run test50

pred test51{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File0
Protected = File1
inv7[]
}
}

run test51

