
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
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File0 + File1 + File2
link = File0->File1 + File1->File1 + File2->File0
link' = File0->File2 + File1->File1 + File2->File0
File'' = File0 + File1 + File2 --loop state
link'' = File0->File2 + File1->File1 + File2->File0 --loop state
Trash = File0 + File2
Trash' = File0 + File2
Trash'' = File0 + File2 --loop state
Protected = File1 + File2
Protected' = File0 + File2
Protected'' = File0 + File2 --loop state
inv10[]
}
}
run test2 for 3 but 2 steps
