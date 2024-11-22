module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all f1,f2: (one File) {
((eventually ((link in (f1->f2)) && (f2 in Trash))) => (f1 in Trash))
})
}