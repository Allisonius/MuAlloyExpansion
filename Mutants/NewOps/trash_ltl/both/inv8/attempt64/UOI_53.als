module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (eventually (((File.link) in Trash) && (historically ((link.File) in Trash)))))
}





