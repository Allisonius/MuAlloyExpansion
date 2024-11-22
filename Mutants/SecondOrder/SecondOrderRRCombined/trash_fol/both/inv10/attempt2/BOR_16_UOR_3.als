module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all x: (one Trash),y: (one Trash) {
((x->y) !in link)
})
}