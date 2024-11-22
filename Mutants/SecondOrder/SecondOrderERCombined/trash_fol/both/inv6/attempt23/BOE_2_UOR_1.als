module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,g: (one File) {
((link in (f->g)) => ((g->f) in link))
})
}