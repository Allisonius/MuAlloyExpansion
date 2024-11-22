module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((is_link[f]) => (Trash !in f))
})
}
pred is_link[f: File] {
(all g: (one File) {
((f->g) in link)
})
}