pred test0{
some disj File1, File0: File {
File = File0 + File1
no link
Trash = File0
Protected = File0
isLinked[File1]
}
}

run test0

pred test1{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv9[]
}
}

run test1

