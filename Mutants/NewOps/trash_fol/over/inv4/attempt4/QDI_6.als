module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(all f: (File - Trash) {
(all t: (one Trash) {
(f != t)
})
})
}





