module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(some z: (one (((File)).link)) {
(eventually ((((File)) in Trash) && (z in Trash)))
})
}





