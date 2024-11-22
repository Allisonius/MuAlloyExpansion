module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(((((Node))->((Node))) in adj) => (((((Node))->((Node))) !in adj) && (Node in (((((Node)).(^adj)) + ((Node))) + ((^adj).((Node)))))))
}





