module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((isLink[f]) => (f !in Trash))
})
}
pred isLink[f1: File] {
(some f2: (one File) {
(link in (f1->f2))
})
}