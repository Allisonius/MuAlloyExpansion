module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all f: (one File),p: (one Protected) {
(historically ((f !in Protected) && (f in Trash)))
})
}