module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some var123456 : File { (((link.var123456) in Trash) => ((var123456.link) in Trash))})
}





