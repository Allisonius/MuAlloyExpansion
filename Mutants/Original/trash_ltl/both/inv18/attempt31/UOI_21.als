module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(all f: (one File) {
(always (before ((f in (Trash')) => (f !in (Protected')))))
})
}





