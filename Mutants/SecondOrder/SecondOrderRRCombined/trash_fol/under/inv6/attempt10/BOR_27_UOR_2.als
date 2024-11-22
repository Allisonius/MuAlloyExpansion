module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some a: (one File) {
(some b: (one File) {
((((f->a) = link) && ((f->b) in link)) => (a = b))
})
})
})
}