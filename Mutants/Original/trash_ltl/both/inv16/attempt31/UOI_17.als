module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv16[] {
(always (eventually (some f: (one File) {
((f in Protected) => (historically (f in Protected)))
})))
}





