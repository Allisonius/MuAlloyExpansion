module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f1: (File - Trash) {
(no t: (one Trash) {
(f1 in t)
})
})
}





