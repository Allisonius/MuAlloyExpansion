module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one f,g,h: (one File) {
(((f->g) in link) && ((*(f->h)) in link))
})
}