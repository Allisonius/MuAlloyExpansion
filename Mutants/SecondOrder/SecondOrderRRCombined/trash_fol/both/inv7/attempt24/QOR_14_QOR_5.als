module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f1: (one File) {
(some t: (one Trash) {
((f1.link) in t)
})
})
}