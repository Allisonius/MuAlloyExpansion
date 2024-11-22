module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(historically (some a,b: (one File) {
(((a->b) in link) => (a in Trash))
}))
}





