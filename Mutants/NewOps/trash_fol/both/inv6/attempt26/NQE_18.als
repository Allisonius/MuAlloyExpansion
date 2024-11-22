module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some y: (one File) {
(all x: (one File) {
((x->y) in link)
})
})
}





