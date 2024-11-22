module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((isLink[f]) => (f !in Trash))
})
}
pred isLink[f1: File] {
(some f2: (one Protected) {
((f1->f2) in link)
})
}





