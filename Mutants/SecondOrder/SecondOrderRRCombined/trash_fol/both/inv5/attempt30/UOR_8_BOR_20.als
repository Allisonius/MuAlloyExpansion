module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (set File) {
(all p: (one Protected) {
((f !in Trash) && (p !in Trash))
})
})
}