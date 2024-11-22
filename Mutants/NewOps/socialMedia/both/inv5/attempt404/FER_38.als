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
pred inv5[] {
(all u1,u2: (one User) {
(all u3: (one User) {
((((u1->u2) in posts) && ((u3->u2) in follows)) => (u2 in Influencer))
})
})
}





