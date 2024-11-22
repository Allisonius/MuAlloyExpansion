module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(after (all f: (one File) {
(((File') = (File - f)) since (eventually (f in Trash)))
}))
}





