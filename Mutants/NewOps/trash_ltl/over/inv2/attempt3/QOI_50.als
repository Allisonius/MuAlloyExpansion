module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv2[] {
((no File) && (some (File')) && (all var123456 : Trash { ((var123456') = var123456)}))
}





