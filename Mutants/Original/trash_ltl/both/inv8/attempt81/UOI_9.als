module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(after (always (some f: (one File) {
((some (link.f)) => (eventually (f in Trash)))
})))
}





