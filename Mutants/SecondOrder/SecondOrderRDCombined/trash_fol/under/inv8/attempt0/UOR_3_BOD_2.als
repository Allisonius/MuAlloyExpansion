module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(all l: (one File) {
(l in Trash)
})
}