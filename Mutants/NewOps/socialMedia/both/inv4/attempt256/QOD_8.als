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
(some a: (one Ad) {
(((((User))->a) in posts) => (all z: (one Photo) {
(((((User))->z) in posts) => (z in Ad))
}))
})
}





