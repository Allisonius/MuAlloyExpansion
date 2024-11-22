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
pred inv1[] {
(all p1: (one Photo),p2: (one Photo),u1: (one User),u2: (one User) {
(((p1 = p2) && ((u1->p1) in posts) && ((u2->p2) in sees)) => (u1 = u2))
})
}





