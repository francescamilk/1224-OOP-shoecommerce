# String is the *Class*
# 'some text' is the *data* the Object is holding
# '.upcase' is a *behaviour* we can apply to the String 
text = "Some text..".upcase

pattern = /SOME/
match_data = text.match(pattern)

# MatchData is the *Class*
# 'SOME' is the *data* the Object is holding
# [0] (reading) is a *behaviour* we can apply on MatchData
match_data[0]
# #<MatchData "SOME">
