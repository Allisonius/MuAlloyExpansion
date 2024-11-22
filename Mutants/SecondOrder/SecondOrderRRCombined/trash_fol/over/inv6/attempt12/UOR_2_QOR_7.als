module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f,g,h: (one File) {
(((f->g) in link) => ((h->g) !in link))
})
}