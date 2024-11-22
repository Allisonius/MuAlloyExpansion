module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(before ((one Node) || (Node = (Node.(^(*adj))))))
}