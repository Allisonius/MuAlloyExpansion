module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(eventually (some f: (one File) {
(before ((f !in (File')) && (always (f !in (File')))))
}))
}





