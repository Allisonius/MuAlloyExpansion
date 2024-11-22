module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(Node in (Node.(^(^adj))))
}