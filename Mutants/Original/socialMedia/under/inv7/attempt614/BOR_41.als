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
(some u1: (one User) {
((us !in (u.follows)) && (u1 in (u.follows)) && (us in (u1.follows)) && (!(us in (u.follows))) && (us in u))
})
})
}





