module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(eventually (all f: (one Trash) {
(historically (always (f in Trash)))
}))
}





