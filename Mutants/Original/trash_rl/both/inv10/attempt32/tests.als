
pred test1 {

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv10[]

}
run test1 for 3 but 1 steps
pred test2 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File0
Protected = File1
inv10[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv10[]
}
}
run test3 for 3 but 1 steps
pred test4 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0 + File1->File1
Trash = File1
Protected = File1
inv10[]
}
}
run test4 for 3 but 1 steps
pred test5 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
Protected = File1
inv10[]
}
}
run test5 for 3 but 1 steps
pred test6 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File0
no Trash
no Trash' --loop state
Protected = File1
inv10[]
}
}
run test6 for 3 but 1 steps
pred test7 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
Trash = File0
Protected = File1
inv10[]
}
}
run test7 for 3 but 1 steps
pred test8 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
no Protected
no Protected' --loop state
inv10[]
}
}
run test8 for 3 but 1 steps
pred test9 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
Protected = File1
inv10[]
}
}
run test9 for 3 but 1 steps
pred test10 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
Protected = File1
inv10[]
}
}
run test10 for 3 but 1 steps
pred test11 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv10[]
}
}
run test11 for 3 but 1 steps
pred test12 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv10[]
}
}
run test12 for 3 but 1 steps
pred test13 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0 + File1
Protected = File1
inv10[]
}
}
run test13 for 3 but 1 steps
pred test14 {
some disj File1, File0: File {
File = File0 + File1
no link
no Trash
no Trash' --loop state
Protected = File1
inv10[]
}
}
run test14 for 3 but 1 steps
