module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(eventually (some f1,f2: (one File) {
(after (((f1->f2) in link) => (f2 in Trash)))
}))
}





