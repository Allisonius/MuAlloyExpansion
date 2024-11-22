module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some a: (one File) {
(one b: (one File) {
((a = b) => (((f->a) in link) && ((f->b) in link)))
})
})
})
}