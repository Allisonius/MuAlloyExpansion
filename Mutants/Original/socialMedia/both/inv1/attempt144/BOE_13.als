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
pred inv1[] {
(all x: (one Photo),u: (one User) {
(some user: (one User) {
((x !in (u.posts)) => (x in (user.posts)))
})
})
}





