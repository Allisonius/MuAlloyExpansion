module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(no var123456 : Protected { ((once (File in var123456)) => (always (File in var123456)))})
}





