module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x,y: (one File) {
((x in Trash) => (historically (((x->y) in link) && (y in Trash))))
})
}