module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv8[] {
(all f: (one File),l: (one (f.link)) {
(l != Trash)
})
}