module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
((all p: (File + Protected) {
(p !in Trash)
}) && (all f: (one File) {
(f in Trash)
}))
}





