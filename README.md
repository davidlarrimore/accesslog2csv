### accesslog2csv

Originally a fork from [https://github.com/woonsan/accesslog2csv](https://github.com/woonsan/accesslog2csv), this perl script parses APACHE 2.2 access logs, applies some basic business rules, and outputs a format CSV that can be used for analysis.



### Exra Business Rules


1. Performs a reverse lookup on the IP address. This is helpful for comparison against Google Analytics data.




### How to run


	perl accesslog2csv.pl access_log_file > csv_output_file.csv


Or, you can redirect STDIN like the following examples:


	perl accesslog2csv.pl < access_log_file > csv_output_file.csv



	cat access_log_file | perl accesslog2csv.pl > csv_output_file.csv


Also, you can check invalid log lines by redirecting STDERR, too:


	perl accesslog2csv.pl < access_log_file > csv_output_file.csv 2> invalid_log_lines.txt


