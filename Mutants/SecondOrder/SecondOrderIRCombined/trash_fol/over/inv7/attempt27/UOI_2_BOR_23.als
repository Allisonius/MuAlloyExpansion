module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
(historically ((isLink[f]) && (f !in Trash)))
})
}
pred isLink[f: File] {
(some g: (one File) {
((f->g) != link)
})
}