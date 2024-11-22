module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(!(some f1,f2: (one File) {
(before (((f1->f2) in (~link)) && (f1 in Trash)))
}))
}