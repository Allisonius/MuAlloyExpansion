module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one f: (one File) {
(all g: (one File) {
(link in (f->g))
})
})
}