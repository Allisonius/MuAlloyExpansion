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
(all x,y: (one univ) {
((((x->y) in suggested) && (x in Influencer) && (y in Ad)) => (all z: (one univ) {
(((x->z) in posts) => (z in Ad))
}))
})
}





