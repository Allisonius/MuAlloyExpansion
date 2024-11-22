module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(one f,g: (one File) {
((g != Trash) => ((f->g) !in link))
})
}