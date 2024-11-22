module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv2[] {
(no f: (one File) {
(lone t: (one Trash) {
(f in t)
})
})
}