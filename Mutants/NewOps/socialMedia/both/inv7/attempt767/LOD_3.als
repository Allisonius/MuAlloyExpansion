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
((all u: (one User) {
(u !in (suggested.u))
}) && (all u1,u3: (one User) {
((u1 in (follows.u3)) => (u1 !in (suggested.u3)))
}))
}





