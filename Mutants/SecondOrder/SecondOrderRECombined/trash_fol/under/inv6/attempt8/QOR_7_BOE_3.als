module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f: (one File) {
(some f1,f2: (one File) {
((((f->f1) in link) && (link in (f->f2))) => (f1 = f2))
})
})
}