module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some x: (one File) {
((x !in Protected) && (x in Trash))
})
}