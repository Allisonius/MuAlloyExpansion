module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(lone f1,f2: (one File) {
(historically (((f1->f2) in link) && (f1 in Trash)))
})
}