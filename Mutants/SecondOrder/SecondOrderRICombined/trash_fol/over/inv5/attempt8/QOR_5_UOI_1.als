module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(lone p: (one File) {
(before ((p !in Protected) && (p in Trash)))
})
}