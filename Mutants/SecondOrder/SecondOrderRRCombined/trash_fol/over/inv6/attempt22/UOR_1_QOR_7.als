module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f1,f2: (one File) {
(((f1->f2) in link) => ((no ((f1.link) & (f2.link))) && (no (f1->f1))))
})
}