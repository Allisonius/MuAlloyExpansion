module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(Node in (some (Node.adj)))
}