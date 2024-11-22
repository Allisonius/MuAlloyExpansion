module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,g,h: (one File) {
(((f->g) = link) => ((h->g) in link))
})
}