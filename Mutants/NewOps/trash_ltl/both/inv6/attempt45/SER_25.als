module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(always (all t: (one Protected) {
((t in Trash) since (t in Trash))
}))
}





