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
(all a: (one Influencer),u1,u2: (one User) {
((((a->u1) in sees) <=> ((u1->u2) in follows)) || ((u1->u2) in suggested))
})
}





