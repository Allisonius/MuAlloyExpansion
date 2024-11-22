module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(lone f: (one File) {
(((File.link) in f) && ((f.link) in (File.link)))
})
}