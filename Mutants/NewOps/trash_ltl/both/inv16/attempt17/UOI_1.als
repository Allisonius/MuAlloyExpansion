module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv16[] {
(before (all f: (one File) {
((f in Protected) since (f in Protected))
}))
}





