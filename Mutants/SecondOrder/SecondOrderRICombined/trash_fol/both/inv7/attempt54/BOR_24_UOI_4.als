module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all x: (one File) {
((isLink[x]) => (x !in Trash))
})
}
pred isLink[f1: File] {
(some f2: (one File) {
((f1->f2) !in (~link))
})
}