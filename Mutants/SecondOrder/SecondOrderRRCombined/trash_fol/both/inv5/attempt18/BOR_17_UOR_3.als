module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (one File) {
((f in Trash) && (f in Protected))
})
}