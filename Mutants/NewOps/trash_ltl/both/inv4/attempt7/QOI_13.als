module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv4[] {
(all var123456 : Trash { (((eventually (some File)) && (File !in Protected)) => (File in var123456))})
}





