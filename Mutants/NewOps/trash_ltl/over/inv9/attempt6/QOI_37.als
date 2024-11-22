module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv9[] {
((no var123456 : Trash { (always (Protected !in var123456))}) && (always (all p: (one Protected) {
(p !in Trash)
})))
}





