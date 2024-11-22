module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(all f: (one File) {
((some (Protected & f)) => (f !in Trash))
})
}





