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
((some u: (one User),p: (one Photo) {
((p in (u.sees)) => ((p in ((u.follows).posts)) && (p !in Ad)))
}) && (all p: (one Photo) {
(p in (sees.p))
}))
}





