module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,lk1: (one File) {
((f !in Trash) => ((f->lk1) in link))
})
}