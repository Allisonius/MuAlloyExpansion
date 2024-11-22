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
(all i: (one Influencer) {
(some p: (one Influencer) {
(all d: (one Day) {
(((p->d) in date) && ((i->p) in posts))
})
})
})
}





