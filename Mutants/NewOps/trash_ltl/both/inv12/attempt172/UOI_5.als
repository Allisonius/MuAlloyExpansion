module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv12[] {
(before ((always (all f: (one (File - Protected)) {
(eventually (f in Trash))
})) && (always (all f: (one (Trash - Protected)) {
(f in (Trash'))
}))))
}





