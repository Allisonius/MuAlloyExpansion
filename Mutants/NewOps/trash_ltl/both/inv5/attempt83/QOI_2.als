module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
((no var123456 : Trash { (no var123456)}) && (some f: (one File) {
(eventually (f in Trash))
}))
}





