pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0
no Trash
no Trash' --loop state
Protected = File0
isLinked[File1]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File1 + File1->File0
no Trash
no Trash' --loop state
Protected = File0
isLinked[File1]
}
}

run test1

pred test2{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File0
isLinked[File1]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
Protected = File0 + File1
isLinked[File1]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0 + File1->File1
no Trash
no Trash' --loop state
no Protected
no Protected' --loop state
isLinked[File1]
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File1->File0
no Trash
no Trash' --loop state
Protected = File1
isLinked[File1]
}
}

run test5

pred test6{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
no Trash
no Trash' --loop state
Protected = File0
isLinked[File1]
}
}

run test6

