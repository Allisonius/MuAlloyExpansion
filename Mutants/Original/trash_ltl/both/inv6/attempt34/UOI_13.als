module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(eventually (historically (some t: (one Trash) {
(always (t in Trash))
})))
}





