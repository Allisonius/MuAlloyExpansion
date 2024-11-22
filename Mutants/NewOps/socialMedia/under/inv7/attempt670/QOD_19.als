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
(((((User)) != s) && ((((User))->s) in suggested)) => (some follower: (one User) {
((follower != s) && (follower != ((User))) && ((follower->s) in follows) && ((((User))->s) !in follows))
}))
})
}





