module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(((f.link) != Trash) => (((f.(^link)) in Trash) && (f in Trash)))
})
}





