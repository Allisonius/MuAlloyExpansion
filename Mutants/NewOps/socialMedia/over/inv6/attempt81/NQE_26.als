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
(all d: (one Day) {
(one p: (one Photo) {
(all i: (one Influencer) {
((p in (i.posts)) && ((p.date) in d) && (one (p.date)))
})
})
})
}





