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
((all u,u2,u3: (one User) {
(((u2 in (u.follows)) && (u3 in (u2.follows)) && (u3 !in (u.sees)) && (u != u2) && (u != u3)) => (u3 in (u.suggested)))
}) && (all u: (one User) {
(u !in (u.suggested))
}) && (all u,u2: (one User) {
((u2 in (u.follows)) => (u2 !in (u.suggested)))
}))
}





