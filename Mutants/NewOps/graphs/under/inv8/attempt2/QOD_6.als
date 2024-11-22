module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
((((Node)) in ((((Node)).adj).adj)) => (((Node)) in (((Node)).adj)))
}





