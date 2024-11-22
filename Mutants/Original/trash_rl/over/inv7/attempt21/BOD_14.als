module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((File = Trash) && (all f: (one File) {
(no f)
}))
}





