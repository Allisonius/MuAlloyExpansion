module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f,g: (one File) {
(((f->g) != link) => ((g->f) !in link))
})
}