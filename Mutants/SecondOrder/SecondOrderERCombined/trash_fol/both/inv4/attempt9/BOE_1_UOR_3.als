module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(all f: (one File) {
((f in Trash) => (f !in Protected))
})
}