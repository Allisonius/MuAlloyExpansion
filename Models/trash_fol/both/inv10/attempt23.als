sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv10{
all x, y : File | x -> y in link and y in Trash implies x in Trash
}