module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
((isLink[f]) => (f !in Trash))
})
}
pred isLink[f: File] {
(all g: (one File) {
(link in (g->f))
})
}