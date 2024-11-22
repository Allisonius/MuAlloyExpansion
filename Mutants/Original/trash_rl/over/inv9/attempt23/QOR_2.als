module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no f1: (one File) {
(all f2: (one File) {
((f1.link) != (f2.link))
})
})
}





