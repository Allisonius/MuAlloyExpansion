module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
((File in Trash) && (all var123456 : Trash { ((File.link) in var123456)}))
}





