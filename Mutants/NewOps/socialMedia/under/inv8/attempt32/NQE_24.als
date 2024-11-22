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
(some u1: (one User) {
(all u: (one User),a: (one Ad) {
(((a in (u.sees)) => ((a in (u1.posts)) && (u1 in (u.follows)))) || (u1 in (u.suggested)))
})
})
}





