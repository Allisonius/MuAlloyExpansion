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
(all u: (one User) {
(all u1: (one ((u.follows) - u)) {
(all a: (one Ad) {
(((u1.posts) in (u.sees)) || ((u.sees) in a))
})
})
})
}





