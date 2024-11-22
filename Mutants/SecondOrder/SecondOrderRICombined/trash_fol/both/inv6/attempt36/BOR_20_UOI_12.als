module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some g: (one File) {
(((f->g) != link) => ((g->f) !in (^link)))
})
})
}