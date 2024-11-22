module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
((eventually ((File - Trash) in Trash)) => (after (eventually ((File - Trash) !in Trash))))
}





