module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv9[] {
(all f: (File & Trash) {
((always ((f') !in Trash)) since (f in Protected))
})
}





