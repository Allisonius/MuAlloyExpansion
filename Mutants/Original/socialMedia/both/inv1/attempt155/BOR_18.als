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
(all u1,u2: (one User),p1: (one Photo) {
(((((u1->p1) !in posts) || ((u1->p1) in sees)) && ((u2->p1) in posts)) => (u1 = u2))
})
}





