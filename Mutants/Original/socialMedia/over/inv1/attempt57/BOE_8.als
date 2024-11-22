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
(all x,y,z: (one univ) {
(((y in User) && (z in User) && ((y->x) in posts) && ((z->x) in posts) && (z = y)) => (x in Photo))
})
}





