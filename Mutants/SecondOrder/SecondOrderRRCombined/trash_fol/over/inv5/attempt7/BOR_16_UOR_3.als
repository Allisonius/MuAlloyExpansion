module unknown
open util/integer [] as integer
sig File {
link: (some File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all x: (one File) {
((x !in Protected) && (x != Trash))
})
}