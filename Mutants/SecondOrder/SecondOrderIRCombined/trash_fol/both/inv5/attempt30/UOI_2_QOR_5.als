module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(no f: (one File) {
(all p: (one Protected) {
(historically ((f in Trash) && (p !in Trash)))
})
})
}