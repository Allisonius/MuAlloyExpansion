module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f,u: (one File) {
((before (((f->u) in link) || (u in Trash))) => (u in Trash))
})
}