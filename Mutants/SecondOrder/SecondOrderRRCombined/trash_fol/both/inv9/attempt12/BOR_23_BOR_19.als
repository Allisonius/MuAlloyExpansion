module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(!(some f1,f2,f3,f4: (one File) {
((((f1->f2) in link) && ((f3->f4) in link)) => (!((f1 != f3) && (f2 != f4))))
}))
}