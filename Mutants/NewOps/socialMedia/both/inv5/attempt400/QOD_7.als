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
(some inf: (one Influencer) {
((((User)) != inf) => ((inf in (((User)).follows)) && (((User)) !in (inf.follows))))
})
}





