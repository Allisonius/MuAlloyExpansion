pred test0{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test0

pred test1{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
no Protected
no Protected' --loop state
isLinked[File1]
}
}

run test1

pred test2{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
isLinked[File0]
}
}

run test2

pred test3{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test3

pred test4{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File1->File0
Trash = File0
Protected = File1
isLinked[File1]
}
}

run test4

pred test5{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test5

pred test6{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File0 + File1
Protected = File1
isLinked[File1]
}
}

run test6

pred test7{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File1
Protected = File0 + File1
isLinked[File1]
}
}

run test7

pred test8{
some disj File1, File0: File {
File = File0 + File1
link = File0->File0 + File0->File1
Trash = File0
Protected = File1
isLinked[File1]
}
}

run test8

