module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
((all var123456 : File { (var123456 !in Protected)}) && (after (File in Protected)))
}





