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
pred inv3[] {
(one u1,u2: (one User) {
((((Photo)) !in Ad) => ((((u1->u2) in follows) && ((u2->((Photo))) in posts)) => ((u1->((Photo))) in sees)))
})
}





