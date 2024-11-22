module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no var123456 : File { (((var123456.link) in Trash) => ((link.var123456) in Trash))})
}





