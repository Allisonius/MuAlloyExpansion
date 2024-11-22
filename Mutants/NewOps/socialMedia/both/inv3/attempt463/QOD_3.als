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
pred inv3[] {
(all x,y: (one User) {
(((((Photo)) !in Ad) && ((x->((Photo))) in sees) && ((y->((Photo))) in posts)) => ((x->y) in follows))
})
}





