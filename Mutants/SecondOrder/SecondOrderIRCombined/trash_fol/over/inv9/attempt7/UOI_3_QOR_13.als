module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x,y: (one File) {
((isLinked[x]) => (!(isLinked[y])))
})
}
pred isLinked[f: File] {
(no g: (one File) {
((^(g->f)) in link)
})
}