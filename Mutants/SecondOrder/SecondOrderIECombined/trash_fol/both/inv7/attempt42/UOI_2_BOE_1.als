module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f1: (one File) {
(some f2: (one File) {
(historically ((link in (f1->f2)) && (f2 !in Trash)))
})
})
}