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
(all x: (one Photo) {
(no y,z: (one User) {
((x in (y.posts)) => (x !in (z.posts)))
})
})
}





