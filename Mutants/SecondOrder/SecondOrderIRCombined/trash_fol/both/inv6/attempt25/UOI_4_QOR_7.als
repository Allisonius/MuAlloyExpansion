module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f: (one File) {
(some g: (one File) {
((f->g) in (~link))
})
})
}