module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all f: (one File),p: (one Protected) {
(once ((f !in Protected) || (f in Trash)))
})
}