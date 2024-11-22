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
(one x,y: (one User) {
(one p: (one Photo) {
((((x->p) in posts) && ((y->p) in sees)) => (x = y))
})
})
}





