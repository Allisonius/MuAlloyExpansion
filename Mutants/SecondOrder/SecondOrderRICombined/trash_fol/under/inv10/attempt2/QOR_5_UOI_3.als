module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(lone f,u: (one File) {
((once (((f->u) in link) && (u in Trash))) => (u in Trash))
})
}