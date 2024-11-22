module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some disj f1,f2: (one File) {
((f1->f2) = link)
})
}