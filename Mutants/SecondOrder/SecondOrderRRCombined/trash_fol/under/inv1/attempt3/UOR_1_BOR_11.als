module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(all f: (one File) {
((f & Trash) = 0)
})
}