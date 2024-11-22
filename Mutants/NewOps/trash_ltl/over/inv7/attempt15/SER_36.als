module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv7[] {
(always (some f: (one (File - File)) {
(eventually (f in Protected))
}))
}





