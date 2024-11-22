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
(all disj u,u2: (one User) {
(all sug: (one (u.suggested)) {
((u2 in (u.follows)) => (((u2.posts).follows) in sug))
})
})
}





