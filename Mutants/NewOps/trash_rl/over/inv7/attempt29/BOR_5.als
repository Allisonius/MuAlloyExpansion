module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
(((File.link) = Trash) && (all f: (one (File.link)) {
(f !in Trash)
}))
}





