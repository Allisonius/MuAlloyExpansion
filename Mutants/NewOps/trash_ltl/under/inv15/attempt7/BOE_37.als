module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv15[] {
(eventually (all f: (one File) {
((Trash !in f) => (eventually (f in Trash)))
}))
}





