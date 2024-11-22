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
(some u: (one User) {
((((Ad)) in (u.sees)) => (one u1: (one User) {
(((u1 in (u.follows)) || (u1 in (u.suggested))) && (((Ad)) in (u1.posts)))
}))
})
}





