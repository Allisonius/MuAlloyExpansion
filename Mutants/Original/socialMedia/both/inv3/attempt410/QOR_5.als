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
(some u: (one User) {
(all u1: (one (User - u)) {
(all a: (one Ad) {
(((u.sees) in (u1.posts)) || ((u.sees) in a))
})
})
})
}





