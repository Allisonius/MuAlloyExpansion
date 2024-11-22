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
(one i: (one Influencer) {
(all p: (one Photo) {
(((i->p) in posts) => (all d: (one Day) {
((p->d) in date)
}))
})
})
}





