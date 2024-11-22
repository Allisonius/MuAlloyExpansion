module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some disj f1,f2: (set File) {
((f1->f2) in link)
})
}