module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(one f1,f2: (one File) {
(((f1->f2) in link) && (f1 !in Trash))
})
}