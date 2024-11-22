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
(all u1,u2: (one User),a: (one Ad) {
(((a in (u2.posts)) && (u1 !in (sees.a))) => (u2 in ((u1.follows) + (u1.suggested))))
})
}





