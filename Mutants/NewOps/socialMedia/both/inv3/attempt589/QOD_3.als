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
(all u1,u2: (one User) {
(all ad: (one Ad) {
(((((Photo)) in (u1.sees)) && (((Photo)) in (u2.posts)) && (((Photo)) != ad)) => (u1 in (u2.follows)))
})
})
}





