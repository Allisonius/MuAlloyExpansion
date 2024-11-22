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
((all u,v: (one User) {
((u = (v.follows)) => ((u.posts) in (v.sees)))
}) && (no p: (one Photo) {
(p in Ad)
}))
}





