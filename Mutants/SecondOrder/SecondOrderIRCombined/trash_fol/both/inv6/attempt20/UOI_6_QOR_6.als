module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(one disj f1,f2: (one File) {
((f1->f2) in (^link))
})
}