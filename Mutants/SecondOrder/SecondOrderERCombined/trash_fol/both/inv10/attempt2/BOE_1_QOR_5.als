module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone x: (one Trash),y: (one Trash) {
(link in (x->y))
})
}