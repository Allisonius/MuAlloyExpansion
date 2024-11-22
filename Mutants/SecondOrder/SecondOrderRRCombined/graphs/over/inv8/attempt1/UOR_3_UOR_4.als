module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(some ((^adj) + iden))
}