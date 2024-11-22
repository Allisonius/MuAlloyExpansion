module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv2[] {
((some File) && (some var123456 : File { (after (no var123456))}))
}





