module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv4[] {
(some f: (one File) {
((Protected !in f) && (eventually (f in Trash)))
})
}





