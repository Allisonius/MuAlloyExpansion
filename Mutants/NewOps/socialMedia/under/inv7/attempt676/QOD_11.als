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
(((((User)) in (((User)).suggested)) => (some u2: (one User) {
((((User)) in (u2.follows)) && (((User)) !in (((User)).follows)) && (u2 in (((User)).follows)))
})) && (all u1,u2: (one User) {
((u1 in (u2.suggested)) => (u1 != u2))
}))
}





