module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(all var123456 : Protected { ((always (some var123456)) until (var123456 in Trash))})
}





