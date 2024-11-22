module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(no a: (one File) {
(some b: (one File) {
((once (((f->a) in link) && ((f->b) in link))) => (a = b))
})
})
})
}