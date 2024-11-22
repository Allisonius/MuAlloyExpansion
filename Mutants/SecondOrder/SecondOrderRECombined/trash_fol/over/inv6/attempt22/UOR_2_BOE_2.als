module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all f1,f2: (one File) {
((link in (f1->f2)) => ((no ((f1.link) & (f2.link))) && (no (f1->f1))))
})
}