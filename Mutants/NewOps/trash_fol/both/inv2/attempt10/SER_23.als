module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all f: (one File) {
(all t: (one Protected) {
(f in t)
})
})
}





