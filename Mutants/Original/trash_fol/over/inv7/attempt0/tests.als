
pred test1 {
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv7[]
}
}
run test1 for 3 but 1 steps
pred test2 {
some disj File0: File {
File = File0
no link
Trash = File0
Protected = File0
inv7[]
}
}
run test2 for 3 but 1 steps
