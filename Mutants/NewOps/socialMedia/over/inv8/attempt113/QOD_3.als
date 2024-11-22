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
(all u1,u2: (one User) {
(((((Photo)) in Ad) && ((u1->((Photo))) in sees)) => (((u2->((Photo))) in posts) && (((u1->u2) in follows) || ((u1->u2) in suggested))))
})
}





