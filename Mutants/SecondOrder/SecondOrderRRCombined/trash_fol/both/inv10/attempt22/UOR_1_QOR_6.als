module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(one f,g: (one File) {
(((g in Trash) && (g != f)) => ((f->g) !in link))
})
}