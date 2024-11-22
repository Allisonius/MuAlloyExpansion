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
(all u1: (one (User - Influencer)),u2: (one (User - (u1 + Influencer))),u3: (one (User - ((u1 + u2) + Influencer))) {
(((u1->u3) in suggested) => (((u1->u2) in follows) && ((u2->u3) in follows) && ((*(u1->u3)) !in follows)))
})
}





