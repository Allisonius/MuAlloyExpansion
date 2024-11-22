module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f,g: (one File) {
(once (((f->g) in link) && (g !in Trash)))
})
}