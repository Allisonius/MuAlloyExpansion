module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
(always (eventually (all f: (one (File + Trash)) {
(after (f in Protected))
})))
}





