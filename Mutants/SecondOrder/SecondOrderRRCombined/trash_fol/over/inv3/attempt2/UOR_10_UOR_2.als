module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv3[] {
(some f: (some File) {
(f = Trash)
})
}