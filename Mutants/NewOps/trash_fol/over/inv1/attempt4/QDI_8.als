module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(all w: (File - Protected) {
((w !in Trash) && (w in Protected))
})
}





