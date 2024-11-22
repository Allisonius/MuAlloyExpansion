module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv10[] {
(always (all p: (one File) {
(always (after ((p in Protected) => (always (p in Protected)))))
}))
}





