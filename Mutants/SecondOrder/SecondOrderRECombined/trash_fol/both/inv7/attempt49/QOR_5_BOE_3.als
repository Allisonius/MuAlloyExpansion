module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone x: (one File) {
((isLink[x]) => (x !in Trash))
})
}
pred isLink[f: File] {
(some y: (one File) {
(link in (f->y))
})
}