module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some f: (one File) {
((f in (lone (File.link))) && ((f.link) in (File.link)))
})
}