module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some x: (one Trash),y: (one Trash) {
((x->y) in link)
})
}