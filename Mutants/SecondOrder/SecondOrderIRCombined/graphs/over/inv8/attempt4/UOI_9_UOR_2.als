module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
((Node->((Node.adj).(^adj))) in adj)
}