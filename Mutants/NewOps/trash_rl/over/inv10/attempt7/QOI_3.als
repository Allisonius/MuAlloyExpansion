module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((all var123456 : Trash { (File in var123456)}) && ((File.link) in Trash))
}





