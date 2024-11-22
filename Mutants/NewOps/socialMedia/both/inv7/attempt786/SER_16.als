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
pred inv7[] {
((all u1,u2,u3: (one Ad) {
(((u3 in (u1.follows)) && (u3 in (follows.u2)) && (u1 !in (u2.follows))) => (u2 in (u1.suggested)))
}) && (all u: (one User) {
(u !in (u.suggested))
}) && (all u1,u2: (one User) {
((u2 in (u1.follows)) => (u2 !in (u1.suggested)))
}))
}





