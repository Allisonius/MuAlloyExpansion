module unknown
open util/integer [] as integer
sig File {
link: (set File)
}
sig Trash in File {}
sig Protected in File {}
pred inv6[] {
(((((File))->((File))) in link) => ((no ((((File)).link) & (((File)).link))) && (no (((File))->((File))))))
}





