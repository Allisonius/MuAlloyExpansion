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
(all p: (one Photo),x1,x2: (one User) {
(((p in (x1.posts)) && (p in (x2.posts))) => ((x1 = x2) && (x1 != User)))
})
}





