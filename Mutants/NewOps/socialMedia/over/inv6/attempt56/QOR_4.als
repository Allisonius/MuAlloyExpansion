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
pred inv6[] {
(one x,y,z: (one univ) {
((x in Day) => (((y->x) in date) && ((z->y) in posts) && (z in Influencer)))
})
}





