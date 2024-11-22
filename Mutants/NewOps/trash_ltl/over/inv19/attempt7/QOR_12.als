module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(always (no f: (one Protected) {
(((f in Trash) releases (f in Protected)) && (eventually (f in Trash)))
}))
}





