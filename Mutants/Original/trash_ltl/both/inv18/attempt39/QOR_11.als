module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(always (lone f: (one File) {
((before (f in Protected)) => (f in Trash))
}))
}





