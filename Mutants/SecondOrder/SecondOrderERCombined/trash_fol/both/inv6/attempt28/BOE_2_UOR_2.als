module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,g,h: (one File) {
(((f->g) in link) && (link in (f->h)))
})
}