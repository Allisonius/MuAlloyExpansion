module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((no var123456 : Protected { (no (Trash & var123456))}) && (all f: (one File) {
((f.link) in Protected)
}))
}





