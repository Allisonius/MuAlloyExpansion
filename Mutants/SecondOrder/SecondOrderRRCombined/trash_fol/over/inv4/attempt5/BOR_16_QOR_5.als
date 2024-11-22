module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv4[] {
(lone f: (one File) {
((f in Protected) && (f != Trash))
})
}