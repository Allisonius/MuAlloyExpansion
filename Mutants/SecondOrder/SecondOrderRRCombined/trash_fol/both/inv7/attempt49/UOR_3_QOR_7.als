module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some x: (one File) {
((isLink[x]) => (x !in Trash))
})
}
pred isLink[f: File] {
(some y: (one File) {
((f->y) in link)
})
}