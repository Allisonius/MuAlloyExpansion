module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
(eventually (always (some f: (one Trash) {
(((File') = (File - f)) && ((Trash') = (Trash - f)))
})))
}





