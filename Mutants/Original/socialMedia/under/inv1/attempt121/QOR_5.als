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
pred inv1[] {
(some p: (one Photo) {
(all y,z: (one User) {
((((y->p) in posts) && ((z->p) in posts)) => (y = z))
})
})
}





