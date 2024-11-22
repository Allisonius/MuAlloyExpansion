module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(all f1,f2: (File - Protected) {
(((f1->f2) in link) && (f1 in Trash))
})
}





