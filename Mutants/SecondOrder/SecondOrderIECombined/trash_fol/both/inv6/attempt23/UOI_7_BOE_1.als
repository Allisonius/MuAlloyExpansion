module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,g: (one File) {
(((~(g->f)) in link) => ((f->g) in link))
})
}