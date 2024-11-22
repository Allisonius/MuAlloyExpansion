module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f: (one File) {
((is_link[f]) => (f !in Trash))
})
}
pred is_link[f: File] {
(lone g: (one File) {
(link in (f->g))
})
}