module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((no var123456 : Trash { (File = var123456)}) && (all f: (one File) {
(no (f.link))
}))
}





