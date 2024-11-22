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
(all user: (one User) {
(no ad: (one univ) {
((((user->ad) in posts) && (ad in Ad)) => (all post: (one univ) {
(((user->post) in posts) && (post in Ad))
}))
})
})
}





