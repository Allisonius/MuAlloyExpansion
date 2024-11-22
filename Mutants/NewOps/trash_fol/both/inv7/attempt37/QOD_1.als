module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((((File)) in Trash) => (no f2: (one File) {
((((File))->f2) in link)
}))
}





