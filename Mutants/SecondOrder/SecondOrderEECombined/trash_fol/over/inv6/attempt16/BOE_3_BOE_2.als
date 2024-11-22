module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1,f2,f3: (one File) {
(((link in (f1->f2)) && (link in (f1->f3))) => (f1 = f2))
})
}