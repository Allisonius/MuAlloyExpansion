module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv15[] {
((no var123456 : File { (always (no (var123456 & Trash)))}) && (eventually (some (File & Trash))))
}





