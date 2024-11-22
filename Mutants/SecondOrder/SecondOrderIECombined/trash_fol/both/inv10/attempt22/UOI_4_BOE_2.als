module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,g: (one File) {
((always ((Trash in g) && (g != f))) => ((f->g) !in link))
})
}