module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,g: (one File) {
((always ((g in Trash) && (g != f))) => ((f->g) !in link))
})
}