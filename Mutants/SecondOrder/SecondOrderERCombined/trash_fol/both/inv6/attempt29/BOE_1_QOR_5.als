module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone f,g,h: (one File) {
(((g->h) !in link) => ((f->g) in link))
})
}