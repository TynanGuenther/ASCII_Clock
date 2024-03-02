#!/usr/bin/perl

use strict;
use warnings;

# Send control sequences to set up the terminal
print "\e[?1049h"; # Enable alternate screen buffer
print "\e[?25l";   # Hide cursor

my @numbers = ([" .----------------. ",
"| .--------------. |",
"| |     __       | |",
"| |    /  |      | |",
"| |    `| |      | |",
"| |     | |      | |",
"| |    _| |_     | |",
"| |   |_____|    | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[" .----------------. ",
"| .--------------. |",
"| |    _____     | |",
"| |   / ___ `.   | |",
"| |  |_/___) |   | |",
"| |   .'____.'   | |",
"| |  / /____     | |",
"| |  |_______|   | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],  
[ " .----------------. ",
"| .--------------. |",
"| |    ______    | |",
"| |   / ____ `.  | |",
"| |   `'  __) |  | |",
"| |   _  |__ '.  | |",
"| |   | \\____) | | |",
"| |    \\______.' | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |   _    _     | |",
"| |  | |  | |    | |",
"| |  | |__| |_   | |",
"| |  |____   _|  | |",
"| |      _| |_   | |",
"| |     |_____|  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |   _______    | |",
"| |  |  _____|   | |",
"| |  | |____     | |",
"| |  '_.____''.  | |",
"| |  | \\____)  | | |",
"| |   \\______.'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |    ______    | |",
"| |  .' ____ \\   | |",
"| |  | |____\\_|  | |",
"| |  | '____`'.  | |",
"| |  | (____) |  | |",
"| |  '.______.'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |   _______    | |",
"| |  |  ___  |   | |",
"| |  |_/  / /    | |",
"| |      / /     | |",
"| |     / /      | |",
"| |    /_/       | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |     ____     | |",
"| |   .' __ '.   | |",
"| |   | (__) |   | |",
"| |   .`____'.   | |",
"| |  | (____) |  | |",
"| |  `.______.'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |    ______    | |",
"| |  .' ____ '.  | |",
"| |  | (____) |  | |",
"| |  '_.____. |  | |",
"| |  | \\____| |  | |",
"| |   \\______,'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
[ " .----------------. ",
"| .--------------. |",
"| |     ____     | |",
"| |   .'    '.   | |",
"| |  |  .--.  |  | |",
"| |  | |    | |  | |",
"| |  |  `--'  |  | |",
"| |   '.____.'   | |",
"| |              | |",
"| '--------------' |",
" '----------------' "],
 ["         ",
  "         ",
  "         ",
  "    _    ",
  "   (_)   ",
  "    _    ",
  "   (_)   ",
  "         ",
  "         ",
  "         ",
  "         "] 
 );
# Display a simple interface
print "\e[H";      # Move cursor to top left corner
my $len = scalar @numbers;
my $C = $len;
for my $row (0 .. $len-1){
  for my $num (0 .. $#numbers){
    my $n = $numbers[$num][$row];
    print "$n";
    #print "\e[1;${C}H";
    #$C = $len * $row;
  }
  print "\n";
}
print "Welcome to My Perl App\n";
print "Press q to quit\n\n";
my $input = '';
while ($input ne 'q') {
  print "Enter something: ";
  $input = <STDIN>;
  chomp $input;
  print "You entered: $input\n";
}

# Restore terminal to its original state
print "\e[?25h";   # Show cursor
print "\e[?1049l"; # Disable alternate screen buffer


