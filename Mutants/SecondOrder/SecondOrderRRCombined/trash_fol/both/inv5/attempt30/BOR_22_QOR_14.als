module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (one File) {
(some p: (one Protected) {
((f in Trash) && (p = Trash))
})
})
}