module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f: (one File) {
(some f1: (one (File - f)) {
((f.link) !in (f1.link))
})
})
}