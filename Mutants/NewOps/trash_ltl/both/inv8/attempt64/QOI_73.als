module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(some var123456 : Trash { (always (eventually (((File.link) in var123456) && ((link.File) in var123456))))})
}





