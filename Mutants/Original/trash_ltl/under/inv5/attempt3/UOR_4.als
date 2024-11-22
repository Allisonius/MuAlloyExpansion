module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
(once (some f: (one File) {
((f !in File) => (always (f !in File)))
}))
}





