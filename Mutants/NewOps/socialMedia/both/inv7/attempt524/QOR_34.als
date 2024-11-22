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
pred inv7[] {
(all x,y: (one User) {
(((x->y) in suggested) <=> ((one z: (one User) {
(((x->z) in follows) => ((z->y) in follows))
}) && (!((x->y) in follows))))
})
}





