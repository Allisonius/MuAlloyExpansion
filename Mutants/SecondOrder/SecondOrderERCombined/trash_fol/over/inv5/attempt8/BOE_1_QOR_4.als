module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(no p: (one File) {
((Protected !in p) && (p in Trash))
})
}