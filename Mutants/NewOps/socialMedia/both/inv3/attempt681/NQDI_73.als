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
(all u1,u2: (one User) {
(all p1,p2: (one Photo) {
(((p1 !in Ad) => ((((u1->p1) in posts) && ((u2->u1) in follows)) => ((u2->p1) in sees))) && (all u: (one User) {u != u1 =>  {u != u1 =>  {
((p2 in Ad) => ((u->p2) in sees))
}}}))
})
})
}





