module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one l: (one File) {
(all f: (one File) {
((f.link) = l)
})
})
}





