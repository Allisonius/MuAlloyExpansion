module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,x: (one File) {
((link in (f->x)) <=> ((f !in Trash) || (x !in Trash)))
})
}