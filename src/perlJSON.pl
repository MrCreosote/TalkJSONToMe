use strict;
use warnings;

use JSON;
use Data::Dumper;

my $nanObj    = {"nan"=>-sin(9**9**9)};
my $infObj    = {"inf"=>9**9**9};
my $neginfObj = {"neginf"=>-9**9**9};

print "testing perl 'JSON' ...\n";

print " NAN TEST:\n";
#print "nan obj: ".Dumper($nanObj); # NOTE: printing the object turns nan to string 'nan' ...
print '  1) encode_json({"nan"=>-sin(9**9**9)})'."\n";
eval { print "     result:".encode_json($nanObj)."\n\n"; };
if($@) { print "     error: $@\n"; }
print '  2) decode_json(\'{"nan":nan}\')'."\n";
eval { print "     result (as printed by Dumper()):".Dumper(decode_json('{"nan":nan}'))."\n"; };
if($@) { print "     error: $@\n"; }


print " INF TEST:\n";
#print "inf obj: ".Dumper($infObj);
print '  1) encode_json({"inf"=>9**9**9})'."\n";
eval { print "     result:".encode_json($infObj)."\n\n"; };
if($@) { print "     error: $@\n"; }
print '  2) decode_json(\'{"inf":inf}\')'."\n";
eval { print "     result (as printed by Dumper()) :".Dumper(decode_json('{"inf":inf}'))."\n"; };
if($@) { print "     error: $@\n"; }


print " NEG INF TEST:\n";
#print "inf obj: ".Dumper($neginfObj);
print '  1) encode_json({"neginf"=>-9**9**9})'."\n";
eval { print "     result:".encode_json($neginfObj)."\n\n"; };
if($@) { print "     error: $@\n"; }
print '  2) decode_json(\'{"neginf":-inf}\')'."\n";
eval { print "     result (as printed by Dumper()):".Dumper(decode_json('{"neginf":-inf}'))."\n"; };
if($@) { print "     error: $@\n"; }


exit 0;
