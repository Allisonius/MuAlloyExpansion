module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f,x: (one File) {
(((f !in Trash) || (x !in Trash)) => ((f->x) in link))
})
}