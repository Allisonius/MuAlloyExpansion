module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(some file: (some File) {
(file !in Trash)
})
}