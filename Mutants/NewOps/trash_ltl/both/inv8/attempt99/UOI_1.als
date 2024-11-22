module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv8[] {
(always (before (all l: (one (File.link)) {
((eventually (l in (File.link))) => (l in Trash))
})))
}





