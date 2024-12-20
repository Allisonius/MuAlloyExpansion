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
(all s,u: (one User) {
(((u != s) && ((u->s) in suggested)) => (some follower: (one User) {
(((u->follower) in follows) && ((follower->s) in follows) && ((u->s) !in posts))
}))
})
}





