module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1,f2,f3: (one File) {
((historically (((f1->f3) in link) || ((f2->f3) in link))) => (f1 = f2))
})
}