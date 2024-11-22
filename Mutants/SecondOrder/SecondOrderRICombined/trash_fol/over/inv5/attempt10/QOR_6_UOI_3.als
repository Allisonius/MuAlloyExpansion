module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(one f1: (one File) {
(once ((f1 !in Protected) && (f1 in Trash)))
})
}