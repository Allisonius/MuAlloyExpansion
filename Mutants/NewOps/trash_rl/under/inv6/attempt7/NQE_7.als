module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(lone file: (one File) {
(all link: (one (File.link)) {
(file in link)
})
})
}





