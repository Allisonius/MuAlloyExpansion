module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(iden in ((~adj).adj))
}