module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv5[] {
((all f: (one (File - Protected)) {
(f in Trash)
}) && (lone f: (one Protected) {
(f in Trash)
}))
}





