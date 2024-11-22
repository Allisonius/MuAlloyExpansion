module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(always ((one Node) || (Node = ((Node.(^adj)) + (Node.(^(~adj)))))))
}