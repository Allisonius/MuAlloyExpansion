module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(lone f: (one File) {
((f in Trash) && (f !in Protected))
})
}