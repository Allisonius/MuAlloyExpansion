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
(no i: (one Influencer),p: (one Photo),d: (one Day) {
(((p->d) in date) && ((i->p) in posts))
})
}





