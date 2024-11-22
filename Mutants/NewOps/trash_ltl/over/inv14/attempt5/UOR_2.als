module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(before (all f: (one Trash) {
((f in Protected) && (f !in (Protected')))
}))
}





