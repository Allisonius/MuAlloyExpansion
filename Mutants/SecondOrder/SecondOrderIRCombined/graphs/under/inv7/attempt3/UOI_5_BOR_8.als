module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(eventually ((one Node) || (Node !in (Node.(^adj)))))
}