module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(historically ((one Node) || (Node !in (Node.(^adj)))))
}