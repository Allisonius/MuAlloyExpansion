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
pred inv2[] {
(all x,y: (one univ) {
((x != User) || (((x in Influencer) && ((x.follows) = y)) => (x != y)))
})
}





