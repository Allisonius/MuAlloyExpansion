module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(eventually (after (all f: (one File) {
((f in (f.link)) => (f in Trash))
})))
}





