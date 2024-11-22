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
pred inv1[] {
(all u1,u2: (one Influencer) {
((some p: (one Photo) {
(((u1->p) in posts) && ((u2->p) in posts))
}) => (u1 = u2))
})
}





