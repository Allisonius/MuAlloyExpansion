module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(eventually (one f: (one File) {
((f in (File - Trash)) until (f in Trash))
}))
}





