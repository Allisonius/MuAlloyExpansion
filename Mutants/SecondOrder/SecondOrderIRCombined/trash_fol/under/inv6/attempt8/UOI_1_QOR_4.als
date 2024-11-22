module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(no f: (one File) {
(some f1,f2: (one File) {
((before (((f->f1) in link) && ((f->f2) in link))) => (f1 = f2))
})
})
}