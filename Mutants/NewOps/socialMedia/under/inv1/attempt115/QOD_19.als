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
(all x,y: (one User) {
(((((Photo)) in (x.posts)) && (((Photo)) in (y.posts))) => (x = y))
})
}





