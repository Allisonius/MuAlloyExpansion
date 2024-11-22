module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f2: (one File) {
(all f1: (one File) {
((f1.link) = f2)
})
})
}





