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
(all u1,u2: (User & Influencer),p: (one Photo) {
((p in (u1.posts)) => (((p !in Ad) && (p in (u2.sees))) => ((u2->u1) in follows)))
})
}





