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
pred inv7[] {
(all s: (one User) {
(all u: (one User) {
(((u != s) && ((u->s) in suggested)) => (all follower: (one User) {
((follower != s) && (follower != u) && ((follower->s) in follows) && ((u->s) !in follows))
}))
})
})
}





