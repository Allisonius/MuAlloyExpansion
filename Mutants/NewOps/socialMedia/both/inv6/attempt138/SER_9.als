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
(all x,y: (one Photo) {
(((x in Influencer) && (y in Photo) && ((x->y) in posts)) => (all z: (one Day) {
((y->z) in date)
}))
})
}





