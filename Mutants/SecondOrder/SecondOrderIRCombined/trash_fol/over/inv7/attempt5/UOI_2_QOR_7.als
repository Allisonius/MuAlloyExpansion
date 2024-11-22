module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some x,y: (one File) {
(historically (((x->y) in link) && (y !in Trash)))
})
}