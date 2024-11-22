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
(one u1,u2: (one Influencer) {
(all p: (one Photo) {
((((u1->p) in sees) && ((u2->p) in posts) && (p !in Ad)) => ((u1->u2) in follows))
})
})
}





