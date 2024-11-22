module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(some var123456 : File { (always ((some var123456) => (always (var123456 in var123456))))})
}





