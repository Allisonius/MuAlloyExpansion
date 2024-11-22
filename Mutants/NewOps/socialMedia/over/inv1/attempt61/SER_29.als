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
((posts in (User one->User)) && (!(some p: (one Photo) {
(all disj u1,u2: (one User) {
(((u1->p) in posts) && ((u2->p) in posts))
})
})))
}





