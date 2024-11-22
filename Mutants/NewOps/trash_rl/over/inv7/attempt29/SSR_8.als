module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv7[] {
((no ((File.link) & Trash)) && (all f: (one (File.link)) {
(f !in Trash)
}))
}





