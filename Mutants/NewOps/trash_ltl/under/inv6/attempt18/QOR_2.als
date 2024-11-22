module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
(lone t: (one Trash) {
((t in Trash) triggered (t in Trash))
})
}





