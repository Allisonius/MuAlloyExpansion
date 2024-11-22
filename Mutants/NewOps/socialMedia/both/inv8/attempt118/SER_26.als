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
pred inv8[] {
(all u,u1,u2: (one (User - Influencer)),a: (one Influencer) {
(((u->a) in sees) && (((u->u1) in follows) || ((u->u2) in suggested)))
})
}





