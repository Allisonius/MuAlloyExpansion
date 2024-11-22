module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone f1: (one File) {
(all f2: (File - Trash) {
((f1.link) = f2)
})
})
}





