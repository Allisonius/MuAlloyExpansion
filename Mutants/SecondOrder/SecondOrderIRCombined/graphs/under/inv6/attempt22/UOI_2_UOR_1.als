module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(historically ((one Node) || (Node = ((Node.(^adj)) + (Node.(^(~adj)))))))
}