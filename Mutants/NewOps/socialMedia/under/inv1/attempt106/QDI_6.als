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
(all i: (Photo - Ad),u1,u2: (one User) {
((((u1->i) in posts) && ((u2->i) in posts)) => (u1 = u2))
})
}





