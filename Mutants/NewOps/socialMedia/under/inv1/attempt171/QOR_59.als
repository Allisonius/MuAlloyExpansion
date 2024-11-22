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
((all p: (one univ) {
((p in Photo) => (some u: (one univ) {
((u in User) && ((u->p) in posts))
}))
}) && (all p: (one univ) {
(one u1,u2: (one univ) {
(((p in Photo) && ((u1->p) in posts) && ((u2->p) in posts)) => (u1 = u2))
})
}))
}





