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
pred inv3[] {
((all p1: (one Photo) {
(all ad: (one Ad) {
(((p1 in (((User)).sees)) && (p1 in (((User)).posts)) && (p1 != ad)) => (((User)) in (((User)).follows)))
})
}) && (all ad: (one Ad) {
(all u1: (one User) {
((ad in (u1.sees)) || (ad !in (u1.sees)))
})
}))
}





