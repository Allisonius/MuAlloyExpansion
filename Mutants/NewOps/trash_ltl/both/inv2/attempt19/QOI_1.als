module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv2[] {
((all var123456 : File { (some var123456)}) && (no Trash) && (no Protected))
}





