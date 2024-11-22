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
(one x: (one univ) {
((x in Day) => (some y: (one Photo) {
(((y->x) in date) && (all z: (one Influencer) {
((z->y) in posts)
}))
}))
})
}





