pred test0{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
no Protected
no Protected' --loop state
inv4[]
}
}

run test0

pred test1{
some disj File0: File {
File = File0
link = File0->File0
Trash = File0
Protected = File0
inv4[]
}
}

run test1

