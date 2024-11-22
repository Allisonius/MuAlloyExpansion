module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1: (one File) {
(lone f2: (File & Protected) {
((f1.link) in f2)
})
})
}





