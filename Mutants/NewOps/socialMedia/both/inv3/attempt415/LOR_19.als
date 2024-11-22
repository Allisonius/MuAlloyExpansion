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
pred inv3[] {
(all x1,x2: (one User),p: (one Photo) {
((((p in (x1.sees)) && (p in (x2.posts))) => (x2 in (x1.follows))) && (x1 = x2))
})
}





