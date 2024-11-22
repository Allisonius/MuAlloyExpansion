module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (one File),p: (set Protected) {
((f = Trash) && (p !in Trash))
})
}