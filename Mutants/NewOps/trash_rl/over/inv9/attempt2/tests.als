
pred test1 {
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv9[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj File0: File {
File = File0
no link
Trash = File0
Protected = File0
inv9[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj File2, File1, File0: File {
File = File0 + File1 + File2
link = File2->File0
Trash = File2
Protected = File1 + File2
inv9[]
}
}
run test3 for 3 but 1 steps
