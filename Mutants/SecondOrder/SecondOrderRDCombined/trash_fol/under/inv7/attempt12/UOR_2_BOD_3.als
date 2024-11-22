module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(f !in Trash)
})
}
pred isLink[f: File] {
(all g: (one File) {
((g->f) in link)
})
}