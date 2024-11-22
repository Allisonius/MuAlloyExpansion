module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
(all x: (one File) {
(once ((Protected !in x) && (x in Trash)))
})
}