module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(all f: (one File) {
(always ((f !in Trash) && (f != Trash)))
})
}