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
(all p: (one Ad) {
(all u1,u2: (one User) {
(((((sees.p) in u1) && (p in (u2.posts))) => (u1 in (follows.u2))) || (u1 in (suggested.u2)))
})
})
}





