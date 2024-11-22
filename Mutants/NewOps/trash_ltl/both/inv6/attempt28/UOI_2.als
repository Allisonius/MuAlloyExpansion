module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(always (some f: (one File) {
(eventually (always (f in Trash)))
}))
}





