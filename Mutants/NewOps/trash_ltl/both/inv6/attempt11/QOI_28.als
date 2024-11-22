module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(no var123456 : Trash { ((once (File in var123456)) since (File in var123456))})
}





