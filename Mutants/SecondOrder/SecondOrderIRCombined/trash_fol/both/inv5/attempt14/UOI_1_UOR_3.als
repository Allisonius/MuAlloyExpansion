module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all f: (one File) {
(before ((f in Trash) || (f !in Protected)))
})
}