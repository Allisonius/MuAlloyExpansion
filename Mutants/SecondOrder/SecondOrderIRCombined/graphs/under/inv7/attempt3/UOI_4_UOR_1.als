module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(always ((one Node) || (Node = (Node.(^adj)))))
}