module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone x,y: (one File) {
(((~(x->y)) in link) && (x !in Trash))
})
}