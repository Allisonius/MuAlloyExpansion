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
(all x: (one univ) {
((all y: (one univ) {
((y->x) in follows)
}) => (x in Influencer))
})
}





