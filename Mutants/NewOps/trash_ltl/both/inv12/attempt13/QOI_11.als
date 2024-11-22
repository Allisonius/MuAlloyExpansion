module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(some var123456 : Trash { ((File in var123456) since (eventually (File in var123456)))})
}





