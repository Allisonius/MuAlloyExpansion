pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1 + File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
inv7[]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File1->File1
no Trash
no Trash' --loop state
Protected = File1
inv7[]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
no link
no Trash
no Trash' --loop state
Protected = File0
inv7[]
}
}

run test2

pred test3{
some disj File0: File {
File = File0
link = File0->File0
no Trash
no Trash' --loop state
Protected = File0
inv7[]
}
}

run test3

