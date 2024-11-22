module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f,g,h: (set File) {
(((f->g) in link) => ((h->g) !in link))
})
}