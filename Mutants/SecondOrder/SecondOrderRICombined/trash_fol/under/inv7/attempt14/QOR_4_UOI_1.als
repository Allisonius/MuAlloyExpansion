module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no x,y: (one File) {
((before (((x->y) in link) && ((y->x) in link))) => ((x !in Trash) && (y !in Trash)))
})
}