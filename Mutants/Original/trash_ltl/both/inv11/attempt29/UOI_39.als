module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
((some (File - Protected)) => (after (always ((File - Protected) in Protected))))
}





