module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f: (one File) {
(some g,h: (one File) {
((link in (f->g)) => ((f->h) !in link))
})
})
}