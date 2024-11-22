module unknown
open util/integer [] as integer
var sig File {
var link: (lone File)
}
var sig Trash in File {}
var sig Protected in File {}
pred inv17[] {
(one f: (one File) {
(once ((always (f in Trash)) => ((File') = (File - f))))
})
}





