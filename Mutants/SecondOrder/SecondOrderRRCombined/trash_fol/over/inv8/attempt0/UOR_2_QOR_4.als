module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(no f: (one File) {
((f.link) !in File)
})
}