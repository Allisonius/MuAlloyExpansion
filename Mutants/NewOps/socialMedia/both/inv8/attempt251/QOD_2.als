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
((all u: (one User) {
(one ((u.sees) & Ad))
}) && (all ad: (one Ad) {
(((((User))->ad) in sees) && (((((User))->(posts.ad)) in follows) || ((((User))->(posts.ad)) in suggested)))
}))
}





