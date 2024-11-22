module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(lone f: (one File),p: (one Protected) {
((f in Trash) => (f !in Protected))
})
}