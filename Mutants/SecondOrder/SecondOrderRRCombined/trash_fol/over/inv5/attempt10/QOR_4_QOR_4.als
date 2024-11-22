module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(lone f1: (one File) {
((f1 !in Protected) && (f1 in Trash))
})
}