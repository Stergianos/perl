#!/usr/bin/perl
use MIME::Lite;
 
$to = 'stergianos@hotmail.com';
$cc = 'stergianos@hotmail.com';
$from = 'stergianosfm@gmail.com';
$subject = 'Test Email';
$message = 'This is test email sent by Perl Script';

$msg = MIME::Lite->new(
                 From     => $from,
                 To       => $to,
                 Cc       => $cc,
                 Subject  => $subject,
                 Data     => $message
                 );
                 

$msg->send('smtp', "smtp.gmail.com", AuthUser=>"stergianosfm@gmail.com", AuthPass=>"stergianos13");
print "Email Sent Successfully\n";