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
pred inv4[] {
(all p: (one (Day - Ad)) {
(all a: (one Ad) {
(all u: (one User) {
((u.posts) !in a)
})
})
})
}





