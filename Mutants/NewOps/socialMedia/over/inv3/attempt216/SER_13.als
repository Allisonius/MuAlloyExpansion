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
(all u1,u2: (one Ad),p: (one Photo) {
(((p in (u1.sees)) && (p !in Ad)) => ((p in (u2.posts)) && (u2 in (u1.follows))))
})
}





