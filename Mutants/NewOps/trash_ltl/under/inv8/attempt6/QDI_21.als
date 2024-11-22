module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(eventually (all f: (File & Protected) {
((one (f.link)) => (eventually (f in Trash)))
}))
}





