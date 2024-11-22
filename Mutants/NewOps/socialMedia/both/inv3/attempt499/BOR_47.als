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
(all p: (one univ) {
(((p !in Ad) && ((u1->p) in posts) && ((u2->p) != sees)) => ((u2->u1) in follows))
})
})
}





