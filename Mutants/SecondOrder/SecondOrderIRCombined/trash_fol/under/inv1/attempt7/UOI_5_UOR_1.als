module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(all w: (one File) {
(eventually ((w !in Trash) || (w in Protected)))
})
}