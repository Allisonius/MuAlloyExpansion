module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv5[] {
(historically (some f: (one Trash) {
((f in Trash) releases (f in File))
}))
}





