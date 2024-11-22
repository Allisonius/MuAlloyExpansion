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
(all p1: (one Photo),p2: (one Photo),i: (one Day) {
(((p1 in (i.posts)) && (p2 in (i.posts))) => ((p1.date) != (p2.date)))
})
}





