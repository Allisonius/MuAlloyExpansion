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
(all u,u1: (one User) {
(all a: (one Ad) {
((((a = (u1.posts)) && (a in (u.sees))) => (u1 in (u.suggested))) || (u1 in (u.follows)))
})
})
}





