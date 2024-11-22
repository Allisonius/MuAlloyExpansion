module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
((no adj) || (!((^(~adj)) in adj)))
}