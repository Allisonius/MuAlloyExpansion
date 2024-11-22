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
(no x: (one User) {
(some a: (one Ad) {
(((x->a) in posts) => (all z: (one Ad) {
((x->z) in posts)
}))
})
})
}





