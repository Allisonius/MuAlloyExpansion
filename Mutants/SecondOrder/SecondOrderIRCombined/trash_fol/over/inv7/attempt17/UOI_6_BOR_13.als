module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x,y: (one File) {
(after (((x->y) != link) && (x !in Trash) && (y !in Trash)))
})
}