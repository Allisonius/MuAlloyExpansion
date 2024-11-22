module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (one File) {
(one t: (one Trash) {
(f in t)
})
})
}