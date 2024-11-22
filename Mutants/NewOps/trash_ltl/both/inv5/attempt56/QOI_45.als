module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
((some File) && (some Trash) && (all var123456 : Trash { (eventually (no var123456))}))
}





