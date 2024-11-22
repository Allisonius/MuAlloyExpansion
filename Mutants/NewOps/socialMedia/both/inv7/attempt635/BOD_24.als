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
(all u1,u2: (one User) {
(((u2 in u1) && (u1 != u2)) => (some u3: (one User) {
((u3 in (u2.follows)) && (u1 in (u3.follows)) && (u2 !in (u1.follows)))
}))
})
}





