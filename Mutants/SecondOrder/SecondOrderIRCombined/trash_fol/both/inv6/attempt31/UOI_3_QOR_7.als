module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f1: (one File) {
(some f2: (one File) {
((^(f1->f2)) in link)
})
})
}