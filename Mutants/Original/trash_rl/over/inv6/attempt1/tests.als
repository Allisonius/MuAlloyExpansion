
pred test1 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File0
Protected = File1
inv6[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv6[]
}
}
run test2 for 3 but 1 steps
