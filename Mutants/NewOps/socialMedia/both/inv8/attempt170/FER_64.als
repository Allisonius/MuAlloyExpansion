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
(all a: (one Ad),u1,u2: (one User) {
((((u1->a) in sees) && ((u2->a) in posts)) <=> (((u1->u2) in follows) || ((u1->u2) in sees)))
})
}





