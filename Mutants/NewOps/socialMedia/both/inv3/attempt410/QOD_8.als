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
(all u1: (one (User - ((User)))) {
(all a: (one Ad) {
(((((User)).sees) in (u1.posts)) || ((((User)).sees) in a))
})
})
}





