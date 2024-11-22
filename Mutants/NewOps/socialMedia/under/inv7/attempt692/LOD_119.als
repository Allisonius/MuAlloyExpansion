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
((all disj x,y,z: (one User) {
((((x->y) in follows) && ((y->z) in follows) && ((x->z) !in follows)) => ((x->z) in suggested))
}) && (all disj x,z: (one User) {
(((x->z) in suggested) => (((x->z) !in follows) && (some y: (one User) {
((x->y) in follows)
})))
}))
}





