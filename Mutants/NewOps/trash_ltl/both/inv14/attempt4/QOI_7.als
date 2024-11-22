module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv14[] {
(all var123456 : Protected { ((var123456 in Trash) => ((var123456') !in Trash))})
}





