module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f1,f2: (one File) {
(always ((f1 in Trash) || ((f2 in Trash) => ((f1->f2) !in link))))
})
}