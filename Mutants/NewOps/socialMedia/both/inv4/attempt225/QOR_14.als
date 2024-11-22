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
(one a: (one Ad) {
(lone x: (one User),p: (one Photo) {
((((x->a) in posts) && ((x->p) in posts)) => (p in Ad))
})
})
}





