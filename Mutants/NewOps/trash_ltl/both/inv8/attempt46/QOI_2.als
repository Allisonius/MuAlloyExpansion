module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(some var123456 : File { ((some link) => (eventually ((link.(var123456 - Protected)) in Trash)))})
}





