module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some ((Node->((Node.adj).adj)) & adj))
}





