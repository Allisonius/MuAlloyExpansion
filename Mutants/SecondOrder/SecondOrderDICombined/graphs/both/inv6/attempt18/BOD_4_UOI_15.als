module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some adj) && (Node in (Node.(^adj))))
}