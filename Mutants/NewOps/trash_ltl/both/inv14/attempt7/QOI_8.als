module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(some var123456 : Protected { (always ((var123456 in Trash) => (var123456 !in (Trash'))))})
}





