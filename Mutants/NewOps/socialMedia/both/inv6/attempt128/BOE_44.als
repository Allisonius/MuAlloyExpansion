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
(all d: (one Day) {
(all p: (one Photo) {
(((i->p) in posts) && (date in (p->d)))
})
})
})
}





