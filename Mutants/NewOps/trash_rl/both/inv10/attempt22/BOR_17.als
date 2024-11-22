module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f: (one File) {
((f != Trash) => ((f.link) in Trash))
})
}





