module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv4[] {
(after (some f: (one File) {
((always (f !in Protected)) => (eventually (f in Trash)))
}))
}





