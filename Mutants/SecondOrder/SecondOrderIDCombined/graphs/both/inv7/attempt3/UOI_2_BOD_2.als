module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(one ((^adj).Node))
}