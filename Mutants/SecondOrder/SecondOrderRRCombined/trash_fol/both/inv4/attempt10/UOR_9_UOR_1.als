module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(some f: (lone File) {
((f in Protected) => (f !in Trash))
})
}