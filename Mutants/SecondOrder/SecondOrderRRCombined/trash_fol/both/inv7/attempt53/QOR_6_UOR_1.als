module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
((is_link[f]) => (f !in Trash))
})
}
pred is_link[f: File] {
(some g: (one File) {
((f->g) in link)
})
}