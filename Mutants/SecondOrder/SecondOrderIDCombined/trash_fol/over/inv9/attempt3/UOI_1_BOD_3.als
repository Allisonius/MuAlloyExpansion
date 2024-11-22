module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no f: (one File) {
(before ((f in File) && ((f.link) in (File.link))))
})
}