module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
((all var123456 : Trash { (eventually (some var123456))}) && (all f: (one File) {
((once (f in Trash)) => (always (f in Trash)))
}))
}





