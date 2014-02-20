
use strict;
use warnings;

use JSON;
use Data::Dumper;

my $jsonString = encode_json({"stuff"=>-sin(9**9**9)});
print $jsonString ."\n";
print decode_json( $jsonString  );

#print decode_json( '{"stuff":nan}'  );
