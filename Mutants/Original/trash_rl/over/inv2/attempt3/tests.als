
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

no File
no link
no File' --loop state
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv2[]

}
run test2 for 3 but 1 steps
