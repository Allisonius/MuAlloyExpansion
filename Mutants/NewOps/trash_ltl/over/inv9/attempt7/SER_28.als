module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv9[] {
(always (all f: (one Trash) {
((f !in (Trash')) && (historically (f !in Trash)))
}))
}





