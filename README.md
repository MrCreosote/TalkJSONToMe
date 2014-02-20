Mucking abaht wiv NaNs and Infs wiv JSON, see?

* Python 2.7.3
* Java 1.7.0_25
* phantomjs 1.9.7
* Perl 5.16.2

Summary: Python, Java, and Javascript can be coerced (simply in the case of
Python & Java, some hacking required for JS) to consistently read and emit
bareword NaN and Infinity.

Perl emits nan and inf barewords, which are not compatible. Perl cannot read bareword
NaN and Infinity. More work here needed.
