module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv15[] {
((always (no (File & Trash))) && (eventually (some (File & File))))
}





