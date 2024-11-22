module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(no var123456 : Trash { (always (((Protected') = Protected) until (some (Protected & var123456))))})
}





