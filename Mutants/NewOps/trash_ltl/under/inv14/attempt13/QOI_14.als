module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(some var123456 : Trash { ((always (some (Protected & var123456))) => (no ((Protected') & (Protected & var123456))))})
}





