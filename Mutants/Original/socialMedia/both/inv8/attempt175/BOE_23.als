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
pred inv8[] {
(all x,y: (one User) {
(all a: (one Ad) {
((((posts in (y->a)) && ((x->a) in sees)) => ((x->y) in follows)) || ((x->y) in suggested))
})
})
}





