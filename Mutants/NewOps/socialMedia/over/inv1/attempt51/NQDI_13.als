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
(all i1,i2: (one univ) {
(some u: (one univ) {u != i1 =>  {u != i1 =>  {
(((i1->u) in posts) && ((i2->u) in posts))
}}})
})
}





