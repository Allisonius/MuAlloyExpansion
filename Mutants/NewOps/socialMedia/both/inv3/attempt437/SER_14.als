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
(all u1,u2: (one Day),p: (one Photo) {
((u1 in (posts.p)) => (((p !in Ad) && ((u2->p) in sees)) => ((u2->u1) in follows)))
})
}





