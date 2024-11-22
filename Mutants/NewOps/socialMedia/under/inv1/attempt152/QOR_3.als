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
(one u1,u2: (one User),p1: (one Photo) {
((((p1->u1) in posts) && (((u2->p1) in posts) || ((u2->p1) in sees))) => (u1 = u2))
})
}





