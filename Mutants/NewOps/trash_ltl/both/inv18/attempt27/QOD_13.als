module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv18[] {
((((Protected)) in Trash) triggered (((Protected)) !in Protected))
}





