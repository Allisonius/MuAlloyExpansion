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
(lone u: (one User),u1: (one (u.follows)) {
(all a: (one Ad) {
(((u.sees) in (u1.posts)) || ((u.sees) in Ad))
})
})
}





