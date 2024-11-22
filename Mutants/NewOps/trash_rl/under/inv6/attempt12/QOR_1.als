module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no f1: (one File) {
(lone f2: (one File) {
((f1 != f2) && ((f2.link) != f1) && ((f1.link) = f2))
})
})
}





