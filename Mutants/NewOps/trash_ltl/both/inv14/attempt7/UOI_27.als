module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(always ((after (Protected in Trash)) => (Protected !in (Trash'))))
}





