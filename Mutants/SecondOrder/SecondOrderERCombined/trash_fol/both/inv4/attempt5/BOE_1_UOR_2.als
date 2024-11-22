module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(all p: (one Protected) {
(Trash in p)
})
}