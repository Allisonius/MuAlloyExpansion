module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f1: (some File) {
(some f2: (one File) {
((f2 !in Trash) => ((f1->f2) in link))
})
})
}