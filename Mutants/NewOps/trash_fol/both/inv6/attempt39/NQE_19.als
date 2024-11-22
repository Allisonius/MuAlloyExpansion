module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some g,h: (one File) {
(all f: (one File) {
(((f->g) in link) => ((f->h) !in link))
})
})
}





