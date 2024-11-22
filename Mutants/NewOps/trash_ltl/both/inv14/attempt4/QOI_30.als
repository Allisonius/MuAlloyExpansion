module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(no var123456 : Trash { ((Protected in var123456) => ((Protected') !in var123456))})
}





