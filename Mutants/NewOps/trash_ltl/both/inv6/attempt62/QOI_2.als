module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv6[] {
((no var123456 : Trash { (no var123456)}) || (all f: (one File) {
((f in Trash) since (f in Trash))
}))
}





