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
(all u1,u3: (one User) {
(((u1->u3) in suggested) => (some u2: (one User) {
(((u1->u2) in suggested) && ((u2->u3) in follows))
}))
})
}





