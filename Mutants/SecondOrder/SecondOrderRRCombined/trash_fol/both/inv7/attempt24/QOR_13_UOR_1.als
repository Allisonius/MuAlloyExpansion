module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f1: (one File) {
(one t: (one Trash) {
((f1.link) in t)
})
})
}