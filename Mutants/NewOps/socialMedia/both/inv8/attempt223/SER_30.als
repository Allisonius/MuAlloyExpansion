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
(all u: (one User) {
(some a: (one Ad),u2: (one Day) {
((((u->a) in sees) && ((u2->a) in posts)) => (((u->u2) in follows) || ((u->u2) in suggested)))
})
})
}





