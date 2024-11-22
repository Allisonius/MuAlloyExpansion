module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x: (one File) {
(some y: (one File) {
(after ((Trash in x) || ((y in Trash) => ((x->y) !in link))))
})
})
}