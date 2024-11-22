module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all p: (one File) {
((p !in Protected) && (p = Trash))
})
}