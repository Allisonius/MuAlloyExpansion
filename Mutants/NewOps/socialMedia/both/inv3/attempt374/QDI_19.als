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
(all p: (one Photo) {
(all u1,u2: (User & Influencer) {
(((p in (u2.posts)) && (p in (u1.sees))) => (u1 in (u2.follows)))
})
})
}





