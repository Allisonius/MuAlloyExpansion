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
(some ad: (one Ad) {
(((((User))->ad) in posts) => (all post: (one univ) {
(((((User))->post) in posts) && (post in Ad))
}))
})
}





