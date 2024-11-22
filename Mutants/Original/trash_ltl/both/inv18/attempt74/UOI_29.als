module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
(all f: (one (Protected - Trash)) {
(always (eventually ((f in (Trash')) => (always (f !in Protected)))))
})
}





