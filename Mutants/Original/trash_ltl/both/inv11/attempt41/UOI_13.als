module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv11[] {
(always (once ((some (File - Protected)) => (after ((File - Protected) in Protected)))))
}





