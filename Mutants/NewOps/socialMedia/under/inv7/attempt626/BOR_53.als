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
(all u: (one User),us: (one (u.suggested)) {
(some u1,u2: (one User) {
((us !in (u.follows)) && (u1 = (u.follows)) && (u2 in (u1.follows)) && (!(u2 in (u.follows))) && (us != u))
})
})
}





