module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f1: (one File) {
(all f2: (one Trash) {
((f1.link) != (f2.link))
})
})
}





