module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
((no link) => (eventually (((link.File) - Protected) in Trash)))
}





