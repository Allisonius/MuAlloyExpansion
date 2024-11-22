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
(one ad: (one Ad) {
(all u: (one User) {
((ad in (u.suggested)) => ((u.posts) in Ad))
})
})
}





