module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some g,h: (File - Protected) {
(((f->g) in link) => ((f->h) !in link))
})
})
}





