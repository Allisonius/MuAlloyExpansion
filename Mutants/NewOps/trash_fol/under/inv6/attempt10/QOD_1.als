module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some a: (one File) {
(some b: (one File) {
((((((File))->a) in link) && ((((File))->b) in link)) => (a = b))
})
})
}





