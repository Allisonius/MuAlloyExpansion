module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(no ((adj.(~adj)) + iden))
}