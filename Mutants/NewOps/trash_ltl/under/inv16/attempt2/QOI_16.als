module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv16[] {
(no var123456 : File { (historically ((var123456 in Protected) => (var123456 in Protected)))})
}





