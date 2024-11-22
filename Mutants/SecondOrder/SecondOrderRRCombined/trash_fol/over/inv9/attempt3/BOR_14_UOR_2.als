module unknown
open util/integer [] as integer
sig File {
link: (one File)
}
sig Trash in File {}
sig Protected in File {}
pred inv9[] {
(no f: (one File) {
((f !in (File.link)) && ((f.link) in (File.link)))
})
}