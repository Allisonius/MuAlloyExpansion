
pred test1 {
some disj File0: File {
File = File0
link = File0->File0
File' = File0 --loop state
link' = File0->File0 --loop state
Trash = File0
Trash' = File0 --loop state
Protected = File0
Protected' = File0 --loop state
inv10[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
File' = File0 + File1 --loop state
link' = File0->File1 + File1->File1 --loop state
Trash = File1
Trash' = File1 --loop state
Protected = File0 + File1
Protected' = File0 + File1 --loop state
inv10[]
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
no Protected
no Protected' --loop state
inv10[]
}
}
run test3 for 3 but 1 steps
pred test4 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File2 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
Trash = File2
Trash' = File0 + File2
Trash'' = File0 + File2 --loop state
Protected = File1 + File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv10[]
}
}
run test4 for 3 but 2 steps
pred test5 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
File' = File0 + File1 --loop state
link' = File1->File1 --loop state
Trash = File1
Trash' = File1 --loop state
Protected = File0 + File1
Protected' = File0 + File1 --loop state
inv10[]
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
Trash = File1
Trash' = File0 + File2
Trash'' = File0 + File2 --loop state
Protected = File2
Protected' = File1
Protected'' = File1 --loop state
inv10[]
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
Trash = File2
Trash' = File0 + File2
Trash'' = File0 + File2 --loop state
Protected = File1 + File2
Protected' = File0
Protected'' = File0 --loop state
inv10[]
}
}
run test7 for 3 but 2 steps
