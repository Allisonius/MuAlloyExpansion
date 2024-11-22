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
(all u1,u2,u3: (one User),a: (one Ad) {
((((u1->a) in sees) => (((u2->a) !in posts) && ((u1->u2) in follows))) || (((u3->a) in posts) && ((u1->u3) in suggested)))
})
}





