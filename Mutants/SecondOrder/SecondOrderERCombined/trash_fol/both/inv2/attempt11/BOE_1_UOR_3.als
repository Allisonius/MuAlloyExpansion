module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all Trash: (one File) {
((Trash in File) && (File !in Protected))
})
}