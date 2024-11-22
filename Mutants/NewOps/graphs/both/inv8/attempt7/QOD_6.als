module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n2: (one ((((Node)).adj).adj)) {
(n2 in (((Node)).adj))
})
}





