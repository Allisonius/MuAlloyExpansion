module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(eventually (some a,b: (File & Protected) {
(((a->b) in link) => (a in Trash))
}))
}





