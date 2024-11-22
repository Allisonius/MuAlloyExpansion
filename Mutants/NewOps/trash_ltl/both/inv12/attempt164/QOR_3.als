module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(lone f: (one Protected) {
((always (eventually (f in Trash))) => (always (eventually (f !in Trash))))
})
}





