module unknown
open util/integer [] as integer
abstract sig Source {}
sig User extends Source {
profile: (set Work),
visible: (set Work)
}
sig Institution extends Source {}
sig Id {}
sig Work {
ids: (some Id),
source: (set Source)
}
pred inv4[] {
((~((~((visible :> (User.profile)).ids)).((visible :> (User.profile)).ids))) in iden)
}