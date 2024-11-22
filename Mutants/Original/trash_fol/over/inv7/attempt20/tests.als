
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
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File1
Protected = File1
inv7[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
Trash = File0
Protected = File1
inv7[]
}
}
run test3 for 3 but 1 steps
pred test4 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File0
Protected = File1
inv7[]
}
}
run test4 for 3 but 1 steps
pred test5 {
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}
run test5 for 3 but 1 steps
