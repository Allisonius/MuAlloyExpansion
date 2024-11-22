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
pred inv7[] {
((all usr1,usr2,usr3: (one User) {
((((usr1->usr2) in follows) && ((usr2->usr3) in follows) && ((usr1->usr3) !in follows)) => ((usr1->usr3) in suggested))
}) && (all usr1,usr2,usr3: (one User) {
(((usr1->usr3) !in suggested) => (((usr1->usr2) in follows) && ((usr2->usr3) in follows) && ((usr1->usr3) in follows)))
}))
}





