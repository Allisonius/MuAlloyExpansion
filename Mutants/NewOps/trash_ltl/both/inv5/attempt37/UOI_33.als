module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
((no Trash) && ((after (no Trash)) until (some Trash)))
}





