module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(one p: (one File) {
((p !in Protected) && (p = Trash))
})
}