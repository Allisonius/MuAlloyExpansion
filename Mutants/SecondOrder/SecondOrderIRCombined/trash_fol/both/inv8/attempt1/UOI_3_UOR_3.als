module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(all f1,f2: (one File) {
(once (((f1->f2) in link) && (f1 in Trash)))
})
}