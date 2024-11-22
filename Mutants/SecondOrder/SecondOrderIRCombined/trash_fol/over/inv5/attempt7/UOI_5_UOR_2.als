module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all x: (one File) {
(eventually ((x !in Protected) && (x in Trash)))
})
}