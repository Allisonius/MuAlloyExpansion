module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(lone f1: (one File),f2: (one File) {
(f1 in Trash)
})
}