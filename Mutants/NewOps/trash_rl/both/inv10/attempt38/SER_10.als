module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one Trash) {
(((no (f.link)) || ((f.link) in Trash)) => (f in Trash))
})
}





