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
(all u1: (one User) {
(some u2: (one User) {
(((((Ad)) in (u1.sees)) => ((((Ad)) in (u2.posts)) && (u2 in (u1.follows)))) || ((((Ad)) in (u2.posts)) && (u2 in (u1.suggested))))
})
})
}





