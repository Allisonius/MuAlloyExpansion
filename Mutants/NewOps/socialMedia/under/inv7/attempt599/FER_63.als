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
(all u: (one User) {
(all s: (one User) {
((s in (u.suggested)) => (some u2: (one (u.follows)) {
((s in (u2.posts)) && (s !in (u.follows)) && (u !in s) && (s !in u))
}))
})
})
}





