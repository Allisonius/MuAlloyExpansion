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
(all ad: (one Ad) {
(one u1,u2: (one User) {
((((ad in (u1.posts)) && (ad in (u2.sees))) => (u1 in (u2.follows))) || (u1 in (u2.suggested)))
})
})
}





