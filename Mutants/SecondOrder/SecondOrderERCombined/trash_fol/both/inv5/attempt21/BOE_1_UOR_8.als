module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (set File) {
((Trash in f) || (f !in Protected))
})
}