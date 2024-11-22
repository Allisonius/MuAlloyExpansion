module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(all f: (one File) {
((Protected in f) && (f !in Trash))
})
}