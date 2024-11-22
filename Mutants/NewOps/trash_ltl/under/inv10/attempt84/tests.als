
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
Trash = File0
Trash' = File0 --loop state
Protected = File1
Protected' = File1 --loop state
inv10[]
}
}
run test2 for 3 but 1 steps
pred test3 {

no File
no link
no File' --loop state
no link' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv10[]

}
run test3 for 3 but 1 steps
