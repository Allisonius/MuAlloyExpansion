module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv13[] {
((File in Trash) && (no var123456 : Trash { (historically (File !in var123456))}))
}





