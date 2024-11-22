module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(all f: (one File) {
(some t: (one Trash) {
(f in t)
})
})
}