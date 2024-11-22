module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f1,f2: (one Trash) {
(((f1->f2) in link) => (f2 != Trash))
})
}