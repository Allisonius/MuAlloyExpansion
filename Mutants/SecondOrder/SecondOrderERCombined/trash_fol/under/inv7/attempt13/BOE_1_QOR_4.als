module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no x: (one File) {
(some y: (one File) {
((Trash in x) || ((y in Trash) => ((x->y) !in link)))
})
})
}