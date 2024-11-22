module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all disj f,g: (one File) {
(((link.f) in Trash) && ((link.g) in Trash))
})
}





