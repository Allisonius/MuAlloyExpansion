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
((((((User))->((Photo))) in sees) => ((((Photo)) !in Ad) && ((((User))->((User))) in follows) && ((((User))->((Photo))) in posts))) && (all a: (one Ad),u1,u2: (one User) {
(((u1->a) in sees) => (((u1->u2) in follows) && ((u2->a) in posts) && (u1 != u2)))
}))
}





