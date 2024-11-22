module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
((Node.(*(^adj))) in Node)
}