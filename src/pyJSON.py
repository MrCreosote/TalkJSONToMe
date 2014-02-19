import json

d = {'Not a number': float('nan'), 'To infinity etc': float('inf')}

print "Python json:"
print json.dumps(d)
