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
(some u1,u2: (one User) {
(all u: (one User),us: (one (u.suggested)) {
((us !in (u.follows)) && (u1 in (u.follows)) && (u2 in (u1.follows)) && (!(u2 in (u.follows))))
})
})
}





