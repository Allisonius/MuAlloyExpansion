module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(((Node.adj).(~adj)) in (Node.adj))
}