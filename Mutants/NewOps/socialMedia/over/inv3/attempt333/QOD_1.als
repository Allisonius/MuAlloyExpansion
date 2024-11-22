module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv3[] {
(((((Photo)) in (((User)).sees)) && (((Photo)) !in Ad)) => ((((Photo)) in ((((User)).follows).posts)) && (all p1: (one Photo) {
((p1 in Ad) => (p1 in (((User)).sees)))
})))
}





