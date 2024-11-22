module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(lone f: (one File) {
(f in Trash)
})
}