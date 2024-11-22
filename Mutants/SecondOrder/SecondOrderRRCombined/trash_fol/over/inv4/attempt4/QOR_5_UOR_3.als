module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(lone f: (one File) {
(all t: (one Trash) {
(f != t)
})
})
}