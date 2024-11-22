module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(some f,g: (set File) {
(((g in Trash) && (g != f)) => ((f->g) !in link))
})
}