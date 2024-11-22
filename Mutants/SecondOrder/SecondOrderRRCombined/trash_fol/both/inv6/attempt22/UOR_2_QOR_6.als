module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one f: (one File) {
(all g: (one File) {
((f->g) in link)
})
})
}