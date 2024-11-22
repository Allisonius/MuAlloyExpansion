module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some x: (one File) {
(((((File))->((File))) in link) => ((((File))->x) !in link))
})
}





