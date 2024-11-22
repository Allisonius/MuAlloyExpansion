module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
(no f: (one File) {
((Trash !in f) && (f in Trash))
})
}