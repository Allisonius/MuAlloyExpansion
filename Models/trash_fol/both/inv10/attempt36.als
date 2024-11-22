sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv10{
inv4[]
all f : File | (all l : f.link | l in Trash implies l.link in Trash)
}

pred inv4{
no (Protected & Trash)
}