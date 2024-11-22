module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
((one Node) || (Node in (some (Node.(^adj)))))
}