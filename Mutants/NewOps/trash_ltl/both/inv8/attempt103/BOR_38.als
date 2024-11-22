module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(eventually (some x,y: (one File) {
(((x->y) != link) => ((x in Trash) && (y in Trash)))
}))
}





