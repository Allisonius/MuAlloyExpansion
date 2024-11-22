module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(all f: (one File) {
(no t: (one Trash) {
(f in t)
})
})
}