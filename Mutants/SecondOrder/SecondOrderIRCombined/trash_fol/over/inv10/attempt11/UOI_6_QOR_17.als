module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f: (one File) {
(after ((f !in Trash) && (one l: (one (f.link)) {
((l in Trash) => (f in Trash))
})))
})
}