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
(all p: (one Photo),u1: (one User),u2: (one User) {
((p in (u1.sees)) => (p !in (u2.posts)))
})
}





