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
((all disj u1,u2: (one User),disj p: (one Photo) {
((p in (u1.posts)) => (((p !in Ad) && (p in (u2.sees))) => (u1 in (u2.follows))))
}) && (all x: (one Ad),u: (one User) {
(x in (u.sees))
}))
}





