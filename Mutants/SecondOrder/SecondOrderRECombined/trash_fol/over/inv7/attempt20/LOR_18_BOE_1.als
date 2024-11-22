module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(all f1: (one File) {
(no t: (one Trash) {
((t in f1) && ((f1.link) in t))
})
})
}