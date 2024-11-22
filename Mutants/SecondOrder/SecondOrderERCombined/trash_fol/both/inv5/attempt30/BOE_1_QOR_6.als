module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(lone f: (one File) {
(all p: (one Protected) {
((Trash in f) && (p !in Trash))
})
})
}