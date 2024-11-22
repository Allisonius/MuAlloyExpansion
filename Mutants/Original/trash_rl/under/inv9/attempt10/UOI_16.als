module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1: (one File) {
(no (((^link).f1) & (f1.link)))
})
}





