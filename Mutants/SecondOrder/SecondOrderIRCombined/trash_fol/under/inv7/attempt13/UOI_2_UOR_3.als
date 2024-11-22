module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x: (one File) {
(some y: (one File) {
(historically ((x in Trash) || ((y in Trash) => ((x->y) !in link))))
})
})
}