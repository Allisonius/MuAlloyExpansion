module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f,f1,f2: (one File) {
((always (((f->f1) in link) && (link in (f1->f2)))) => (f1 = f2))
})
}