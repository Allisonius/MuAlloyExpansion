module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(all f: (one File) {
((f !in Trash) until (after ((eventually (f in Trash)) => (eventually (f !in Trash)))))
})
}





