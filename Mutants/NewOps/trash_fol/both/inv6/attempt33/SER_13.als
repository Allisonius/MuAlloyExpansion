module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1,f2: (one Protected) {
(((f1->f2) in link) => (no ((f1.link) & (f2.link))))
})
}





