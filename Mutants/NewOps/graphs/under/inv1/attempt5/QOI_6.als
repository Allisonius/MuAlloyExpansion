module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no var123456 : Node { ((some (var123456.adj)) => (some (adj.var123456)))})
}





