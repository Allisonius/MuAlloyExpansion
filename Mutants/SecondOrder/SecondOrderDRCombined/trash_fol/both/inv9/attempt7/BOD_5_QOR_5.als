module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(lone f: (one File) {
(some f1: (one (File - f)) {
((f.link) !in f1)
})
})
}