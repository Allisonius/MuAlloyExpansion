module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
((some Node) || (Node = ((Node.(^adj)) + (Node.(^(~adj))))))
}