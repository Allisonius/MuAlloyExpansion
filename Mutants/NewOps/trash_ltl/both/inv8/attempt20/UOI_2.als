module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (all f1: (one File),f2: (one File) {
((f1.link) = f2)
}))
}





