module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(some f: (one File) {
(always ((f in (File.link)) && ((f.link) in (File.link))))
})
}