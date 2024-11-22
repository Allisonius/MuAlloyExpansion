module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some x: (one File) {
(some y: (one File) {
((x in Trash) || ((y in Trash) => ((x->y) = link)))
})
})
}