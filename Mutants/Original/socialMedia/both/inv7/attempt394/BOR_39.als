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
(all u1,u2,u3: (one User) {
(((u1 in (follows.u2)) && (u2 in (follows.u3)) && (u1 !in (follows.u3))) => (u3 != (suggested.u1)))
})
}





