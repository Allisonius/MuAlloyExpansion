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
((((((Photo)) in Ad) && ((((User))->((Photo))) in posts)) => (all ph: (one Photo) {
(((((User))->ph) in posts) => (ph in Ad))
})) && (all u: (one User) {
(((u.posts) in Ad) => (all p: (one Photo) {
((posts.p) in Ad)
}))
}))
}





