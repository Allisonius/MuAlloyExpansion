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
pred inv5[] {
(lone x1: (one User) {
(all x2: (one User) {
(((x2->x1) in follows) => (x1 in Influencer))
})
})
}





