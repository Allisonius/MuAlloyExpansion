module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv13[] {
(before (all f: (one File) {
(always ((f in Trash) => (before (f !in Trash))))
}))
}





