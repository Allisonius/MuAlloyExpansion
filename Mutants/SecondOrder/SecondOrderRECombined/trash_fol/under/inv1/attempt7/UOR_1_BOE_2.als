module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(all w: (one File) {
((w !in Trash) || (Protected in w))
})
}