module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f,x: (one File) {
(((f->x) in link) => (after ((f->x) in link)))
})
}





