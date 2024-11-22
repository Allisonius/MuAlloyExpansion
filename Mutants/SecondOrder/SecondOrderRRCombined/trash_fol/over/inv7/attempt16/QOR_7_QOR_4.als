module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no x,y: (one File) {
(((x->y) in link) && (y !in Trash) && (x !in Trash))
})
}