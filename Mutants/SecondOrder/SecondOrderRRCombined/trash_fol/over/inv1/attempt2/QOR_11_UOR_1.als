module unknown
open util/integer [] as integer
sig File {
link: (lone File)
}
sig Trash in File {}
sig Protected in File {}
pred inv1[] {
((no Trash) && (some f: (one File) {
(f in Trash)
}))
}