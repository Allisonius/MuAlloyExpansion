module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(all fl: (one (f.link)) {
((fl in Trash) => (f in Trash))
})
})
}





