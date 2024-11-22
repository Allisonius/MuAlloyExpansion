module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(all f: (one File) {
(some f1: (one f) {
((f.link) != (f1.link))
})
})
}