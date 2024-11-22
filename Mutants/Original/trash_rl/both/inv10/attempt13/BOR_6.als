module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv10[] {
(no (((File.link) & Trash) + ((link.File) & Trash)))
}





