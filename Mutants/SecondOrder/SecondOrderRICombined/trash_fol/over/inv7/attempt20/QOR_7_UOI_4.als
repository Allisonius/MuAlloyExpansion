module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(some f1: (one File) {
(no t: (one Trash) {
(always ((f1 in t) || ((f1.link) in t)))
})
})
}