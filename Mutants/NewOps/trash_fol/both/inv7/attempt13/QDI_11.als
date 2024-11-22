module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(!(some f1,f2: (File & Protected) {
((f1->f2) !in link)
}))
}





