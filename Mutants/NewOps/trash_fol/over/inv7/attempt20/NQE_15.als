module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(no t: (one Trash) {
(all f1: (one File) {
((f1 in t) || ((f1.link) in t))
})
})
}





