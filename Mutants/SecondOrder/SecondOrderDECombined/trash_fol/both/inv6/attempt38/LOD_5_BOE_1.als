module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(some f1,f2,f3: (one File) {
((f2 = f3) => ((f1->f2) in link))
})
}