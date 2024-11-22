module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(eventually (no f: (one Protected) {
((f in Trash) until (f in Protected))
}))
}





