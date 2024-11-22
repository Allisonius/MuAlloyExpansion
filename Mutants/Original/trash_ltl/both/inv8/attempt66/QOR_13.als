module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (one l: (one (File.link)) {
(eventually (always (l in Trash)))
}))
}





