pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File1
no Protected
no Protected' --loop state
inv7[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File1
Trash = File0
Protected = File1
inv7[]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0
Trash = File1
Protected = File1
inv7[]
}
}

run test2

