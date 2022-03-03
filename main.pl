#!/usr/bin/perl
use strict;
use warnings;
use Email::Send::SMTP::Gmail;

my ($mail,$error) = Email::Send::SMTP::Gmail->new(
    -layer =>'ssl',
    -port  =>'465',
    -smtp  =>'smtp.gmail.com',
    -login =>'youraccount@gmail.com',
    -pass  =>'yourpassword1234'
    );

die "session error: $error" if $mail ==-1;
$mail->send(
    -to         =>'destinatary@gmail.com',
    -subject    =>'Email Subject',
    -body       =>'Email body goes here\n',
    -attachments=>'test.pdf'
    );
$mail->bye;
