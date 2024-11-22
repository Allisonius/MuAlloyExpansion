module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(((((Node))->((Node))) in adj) => ((((Node))->((Node))) in adj))
}





