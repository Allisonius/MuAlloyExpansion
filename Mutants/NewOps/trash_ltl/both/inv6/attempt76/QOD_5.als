module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
((eventually ((File - Trash) in Trash)) => (always ((File - Trash) in Trash)))
}





