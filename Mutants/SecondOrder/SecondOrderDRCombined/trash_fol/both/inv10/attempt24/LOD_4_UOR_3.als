module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(all l,f: (one File) {
((f in Trash) => (l in Trash))
})
}