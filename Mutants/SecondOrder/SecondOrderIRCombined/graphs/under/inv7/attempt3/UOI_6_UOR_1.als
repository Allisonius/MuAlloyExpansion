module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(after ((one Node) || (Node = (Node.(^adj)))))
}