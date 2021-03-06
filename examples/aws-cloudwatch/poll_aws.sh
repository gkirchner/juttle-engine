#!/bin/bash

# This juttle program does periodic reads of aws information and writes the results to a mysql database.

sleep 40;

echo 'Polling from AWS and Writing to Mysql...';

juttle -e "

import 'adapters/aws' as AWS;

read aws -from :now: -to :end: -every :10s:
     | AWS.aggregate_all
     | write mysql -table 'aws_aggregation';

";

echo 'juttle poller unexpectedly exited';

tail -f /dev/null
