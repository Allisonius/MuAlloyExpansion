module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some f2: (one File) {
((((f->((File))) in link) && ((f->f2) in link)) => (((File)) = f2))
})
})
}





