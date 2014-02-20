import json

d = {'Not a number': float('nan'), 'To infinity etc': float('inf')}

print "Python testing " + str(d) + ":"
print "json.dumps():"
print json.dumps(d)
print "json.loads():"
print json.loads('{"Not a number": NaN, "To infinity etc": Infinity}')
perlstr = '{"Not a number": nan, "To infinity etc": inf}'
print 'testing ' + perlstr
print "json.loads():"
try:
    print json.loads(perlstr)
except ValueError as err:
    print err
