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
(all u: (one User) {
(all x: (one User) {x != u =>  {x != u =>  {
((u in Influencer) => (x in (follows.u)))
}}})
})
}





