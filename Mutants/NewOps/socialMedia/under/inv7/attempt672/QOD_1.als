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
(some u: (one User) {
(((u != ((User))) && ((u->((User))) in suggested)) => (some follower: (one User) {
((follower != u) && (follower != ((User))) && ((follower->((User))) in follows) && ((u->((User))) !in follows))
}))
})
}





