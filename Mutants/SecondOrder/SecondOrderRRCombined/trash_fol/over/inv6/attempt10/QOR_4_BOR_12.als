module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no f,g,h: (one File) {
(((f->g) != link) => ((f->h) !in link))
})
}