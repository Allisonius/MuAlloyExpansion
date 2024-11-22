module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(no f: (one File) {
(one t: (one Trash) {
(f in t)
})
})
}