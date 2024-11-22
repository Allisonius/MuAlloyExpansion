module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some f,g: (one File) {
(((f->g) in link) => ((g->f) !in link))
})
}