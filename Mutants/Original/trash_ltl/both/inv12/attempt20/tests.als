
pred test1 {

no File
no link
no File' --loop state
no link' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv12[]

}
run test1 for 3 but 1 steps
pred test2 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
File' = File0 + File1 --loop state
link' = File1->File1 --loop state
Trash = File0
Trash' = File0 --loop state
Protected = File1
Protected' = File1 --loop state
inv12[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj File0: File {
File = File0
link = File0->File0
File' = File0 --loop state
link' = File0->File0 --loop state
Trash = File0
Trash' = File0 --loop state
Protected = File0
Protected' = File0 --loop state
inv12[]
}
}
run test3 for 3 but 1 steps
pred test4 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
File' = File0 + File1 --loop state
link' = File1->File1 --loop state
Trash = File0 + File1
Trash' = File0 + File1 --loop state
Protected = File1
Protected' = File1 --loop state
inv12[]
}
}
run test4 for 3 but 1 steps
pred test5 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File2
File' = File0 + File1 + File2 --loop state
link' = File2->File2 --loop state
Trash = File0 + File1
Trash' = File0 + File1 --loop state
Protected = File2
Protected' = File2 --loop state
inv12[]
}
}
run test5 for 3 but 1 steps
pred test6 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
Trash = File2
no Trash'
no Trash'' --loop state
Protected = File1 + File2
Protected' = File1
Protected'' = File1 --loop state
inv12[]
}
}
run test6 for 3 but 2 steps
pred test7 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
no Trash
Trash' = File1
Trash'' = File1 --loop state
Protected = File1 + File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv12[]
}
}
run test7 for 3 but 2 steps
pred test8 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
no Trash
Trash' = File0
Trash'' = File0 --loop state
Protected = File2
Protected' = File2
Protected'' = File2 --loop state
inv12[]
}
}
run test8 for 3 but 2 steps
pred test9 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File1 + File2
link = File1->File1 + File2->File0
link' = File1->File1
File'' = File1 + File2 --loop state
link'' = File1->File1 --loop state
Trash = File0
Trash' = File1
Trash'' = File1 --loop state
Protected = File1 + File2
Protected' = File1
Protected'' = File1 --loop state
inv12[]
}
}
run test9 for 3 but 2 steps
pred test10 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
Trash = File2
Trash' = File0
Trash'' = File0 --loop state
Protected = File1 + File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv12[]
}
}
run test10 for 3 but 2 steps
pred test11 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
no Trash
Trash' = File0
Trash'' = File0 --loop state
Protected = File1 + File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv12[]
}
}
run test11 for 3 but 2 steps
pred test12 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
Trash = File1 + File2
Trash' = File0
Trash'' = File0 --loop state
Protected = File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv12[]
}
}
run test12 for 3 but 2 steps
pred test13 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File1->File1 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
no Trash
Trash' = File0
Trash'' = File0 --loop state
Protected = File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv12[]
}
}
run test13 for 3 but 2 steps
