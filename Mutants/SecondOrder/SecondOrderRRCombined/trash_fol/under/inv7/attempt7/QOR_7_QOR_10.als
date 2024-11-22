module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some x: (one File) {
(all y: (one File) {
((y in Trash) => ((x->y) !in link))
})
})
}