module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (all f: (one File) {
((lone (f.(*link))) => (always (eventually ((f.(*link)) in Trash))))
}))
}





