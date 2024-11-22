module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no f: (one File) {
((isLink[f]) => (Trash !in f))
})
}
pred isLink[f: File] {
(all g: (one File) {
((f->g) in link)
})
}