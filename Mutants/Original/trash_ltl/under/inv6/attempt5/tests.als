
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
inv6[]
}
}
run test1 for 3 but 1 steps
pred test2 {

no File
no link
no File' --loop state
no link' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv6[]

}
run test2 for 3 but 1 steps
pred test3 {
some disj File2, File1, File0: File {
File = File0
File' = File1 + File2 + File0
no link
link' = File1->File0 + File2->File2 + File0->File1
File'' = File1 + File2 + File0 --loop state
link'' = File1->File0 + File2->File2 + File0->File1 --loop state
Trash = File0
Trash' = File0
Trash'' = File0 --loop state
Protected = File0
Protected' = File2 + File0
Protected'' = File2 + File0 --loop state
inv6[]
}
}
run test3 for 3 but 2 steps
pred test4 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
File' = File2
link = File0->File2 + File1->File0 + File2->File0
link' = File2->File2
File'' = File2 --loop state
link'' = File2->File2 --loop state
no Trash
Trash' = File2
Trash'' = File2 --loop state
no Protected
Protected' = File2
Protected'' = File2 --loop state
inv6[]
}
}
run test4 for 3 but 2 steps
