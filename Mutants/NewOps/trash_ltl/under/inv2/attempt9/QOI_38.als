module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv2[] {
(some var123456 : File { ((no var123456) until (some (var123456')))})
}





