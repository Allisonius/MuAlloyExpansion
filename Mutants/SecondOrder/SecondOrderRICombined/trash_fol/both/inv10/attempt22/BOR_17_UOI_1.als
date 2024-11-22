module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,g: (one File) {
((before ((g in Trash) && (g in f))) => ((f->g) !in link))
})
}