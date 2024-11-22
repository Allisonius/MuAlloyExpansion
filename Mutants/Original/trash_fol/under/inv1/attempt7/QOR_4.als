module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(one w: (one File) {
((w !in Trash) || (w in Protected))
})
}





