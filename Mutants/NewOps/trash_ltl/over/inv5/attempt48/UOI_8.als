module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
(always (eventually (some f: (one File) {
((f in Trash) && (f !in (File')))
})))
}





