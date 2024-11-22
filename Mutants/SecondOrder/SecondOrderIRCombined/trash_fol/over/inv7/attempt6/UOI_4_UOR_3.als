module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,g: (one File) {
(always (((f->g) in link) && (f !in Trash)))
})
}