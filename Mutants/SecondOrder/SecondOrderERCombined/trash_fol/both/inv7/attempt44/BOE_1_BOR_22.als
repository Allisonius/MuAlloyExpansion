module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f1: (one File) {
(some f2: (one File) {
((link in (f1->f2)) && (f2 = Trash))
})
})
}