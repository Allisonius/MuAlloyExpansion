module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one f1: (one File) {
(lone f2: (one File) {
((f2.link) = f1)
})
})
}





