module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(no var123456 : File { (eventually (always (var123456 in Trash)))})
}





