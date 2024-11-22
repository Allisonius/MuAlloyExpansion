module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv19[] {
(eventually (all f: (one Protected) {
(after ((eventually (f in Trash)) => (historically (f in Protected))))
}))
}





