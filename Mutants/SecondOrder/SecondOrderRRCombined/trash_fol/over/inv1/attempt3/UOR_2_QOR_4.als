module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(no f: (one File) {
((f !in Trash) && (f in Trash))
})
}