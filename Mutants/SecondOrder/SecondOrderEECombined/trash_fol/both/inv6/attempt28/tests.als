pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
Trash = File1
no Protected
no Protected' --loop state
inv6[]
}
}

run test0

