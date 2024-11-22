module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(all f: (File & Trash) {
(always ((eventually (f in Trash)) => (always ((f') !in File))))
})
}





