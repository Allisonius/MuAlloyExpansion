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
(all u,s: (one User) {
((s = (u.suggested)) => (some u1: (one User) {
((u1 in (u.follows)) && (s in (u1.follows)) && (u != s))
}))
})
}





