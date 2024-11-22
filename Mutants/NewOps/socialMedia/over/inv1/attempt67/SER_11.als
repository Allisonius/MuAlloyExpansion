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
((all p: (one User) {
(some u: (one User) {
((p->u) in posts)
})
}) && (all p: (one Photo),u1: (one User),u2: (one User) {
((((u1->p) in posts) && ((u2->p) in posts)) => (u1 = u2))
}))
}





