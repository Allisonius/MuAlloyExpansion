module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(some f: (one File),l: (one (f.link)) {
(l in Trash)
})
}