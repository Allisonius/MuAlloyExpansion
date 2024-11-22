module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(one f1: (one File) {
(no t: (one Trash) {
(f1 in t)
})
})
}