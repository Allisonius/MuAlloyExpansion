module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(!(some f1,f2,f3: (one File) {
(((f1->f2) = link) && ((f1->f3) in link) && (f3 != f2))
}))
}