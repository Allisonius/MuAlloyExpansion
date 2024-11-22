module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(all link: (one (File.link)) {
(all file: (one File) {
(file in link)
})
})
}





