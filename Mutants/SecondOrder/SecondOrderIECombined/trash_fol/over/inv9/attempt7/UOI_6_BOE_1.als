module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all x,y: (one File) {
((!(isLinked[y])) => (isLinked[x]))
})
}
pred isLinked[f: File] {
(some g: (one File) {
((g->f) in (^link))
})
}