sig File {
  	/* A file is potentially a link to other files. */
	link : set File
}
/* The set of files in the trash. */
sig Trash in File {}

/* The set of protected files. */
sig Protected in File {}


pred inv7{
all f:File | some f1:(File - f) | f.link not in f1.link
}