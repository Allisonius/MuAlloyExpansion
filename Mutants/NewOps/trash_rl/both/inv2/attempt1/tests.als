
pred test1 {
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv2[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv2[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
no Protected
no Protected' --loop state
inv2[]
}
}
run test3 for 3 but 1 steps
