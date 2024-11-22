module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(before (always ((some (link.File)) => (eventually ((link.File) in Trash)))))
}





