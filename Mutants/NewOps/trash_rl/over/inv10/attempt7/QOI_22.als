module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((File in Trash) && (some var123456 : File { ((var123456.link) in Trash)}))
}





