module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(some f: (some File) {
((f in Trash) && (f !in Protected))
})
}