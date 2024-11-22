module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv2[] {
((no Trash) && (no var123456 : Trash { (after (some var123456))}))
}





