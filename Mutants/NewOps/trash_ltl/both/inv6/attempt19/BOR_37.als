module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(always (after (some f: (one File) {
(f = Trash)
})))
}





