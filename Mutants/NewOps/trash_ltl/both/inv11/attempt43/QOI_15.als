module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
((((File - Protected) - Trash) !in Protected) && (all var123456 : Protected { (after ((File - var123456) in var123456))}))
}





