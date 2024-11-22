
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
no Trash
no Trash' --loop state
Protected = File0
inv9[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj File0: File {
File = File0
no link
Trash = File0
no Protected
no Protected' --loop state
inv9[]
}
}
run test3 for 3 but 1 steps
