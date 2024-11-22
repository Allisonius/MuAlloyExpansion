module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one f: (one File) {
(some g,h: (one File) {
(((f->h) !in link) => ((f->g) in link))
})
})
}