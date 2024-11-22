module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f: (one File) {
((isLink[f]) => (f !in Trash))
})
}
pred isLink[f: File] {
(no g: (one File) {
((g->f) in link)
})
}