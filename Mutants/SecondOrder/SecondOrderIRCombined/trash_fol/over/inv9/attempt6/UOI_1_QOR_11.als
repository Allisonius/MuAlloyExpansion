module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all g,x: (one File) {
(before ((!(isLink[g])) && (!(isLink[x]))))
})
}
pred isLink[f: File] {
(all g: (one File) {
((g->f) in link)
})
}