module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(one fl: (one (f.link)) {
((fl = Trash) => (f in Trash))
})
})
}





