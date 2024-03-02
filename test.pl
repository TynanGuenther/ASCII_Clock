#!/usr/bin/perl

use strict;
use warnings;


my %numbers = (1 => (" .----------------. ",
"| .--------------. |",
"| |     __       | |",
"| |    /  |      | |",
"| |    `| |      | |",
"| |     | |      | |",
"| |    _| |_     | |",
"| |   |_____|    | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
2 => ( " .----------------. ",
"| .--------------. |",
"| |    _____     | |",
"| |   / ___ `.   | |",
"| |  |_/___) |   | |",
"| |   .'____.'   | |",
"| |  / /____     | |",
"| |  |_______|   | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),  
3 => ( " .----------------. ",
"| .--------------. |",
"| |    ______    | |",
"| |   / ____ `.  | |",
"| |   `'  __) |  | |",
"| |   _  |__ '.  | |",
"| |   | \\____) | | |",
"| |    \\______.' | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
4 => ( " .----------------. ",
"| .--------------. |",
"| |   _    _     | |",
"| |  | |  | |    | |",
"| |  | |__| |_   | |",
"| |  |____   _|  | |",
"| |      _| |_   | |",
"| |     |_____|  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
5 => ( " .----------------. ",
"| .--------------. |",
"| |   _______    | |",
"| |  |  _____|   | |",
"| |  | |____     | |",
"| |  '_.____''.  | |",
"| |  | \\____)  | | |",
"| |   \\______.'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
6 => ( " .----------------. ",
"| .--------------. |",
"| |    ______    | |",
"| |  .' ____ \\   | |",
"| |  | |____\\_|  | |",
"| |  | '____`'.  | |",
"| |  | (____) |  | |",
"| |  '.______.'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
7 => ( " .----------------. ",
"| .--------------. |",
"| |   _______    | |",
"| |  |  ___  |   | |",
"| |  |_/  / /    | |",
"| |      / /     | |",
"| |     / /      | |",
"| |    /_/       | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
8 => ( " .----------------. ",
"| .--------------. |",
"| |     ____     | |",
"| |   .' __ '.   | |",
"| |   | (__) |   | |",
"| |   .`____'.   | |",
"| |  | (____) |  | |",
"| |  `.______.'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
9 => ( " .----------------. ",
"| .--------------. |",
"| |    ______    | |",
"| |  .' ____ '.  | |",
"| |  | (____) |  | |",
"| |  '_.____. |  | |",
"| |  | \\____| |  | |",
"| |   \\______,'  | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
0 => ( " .----------------. ",
"| .--------------. |",
"| |     ____     | |",
"| |   .'    '.   | |",
"| |  |  .--.  |  | |",
"| |  | |    | |  | |",
"| |  |  `--'  |  | |",
"| |   '.____.'   | |",
"| |              | |",
"| '--------------' |",
" '----------------' "),
10 => ("         ",
  "         ",
  "         ",
  "    _    ",
  "   (_)   ",
  "    _    ",
  "   (_)   ",
  "         ",
  "         ",
  "         ",
  "         ") 
 );


# Send control sequences to set up the terminal
#print "\e[?1049h"; # Enable alternate screen buffer
  #print "\e[?25l";   # Hide cursor
# Display a simple interface
#print "\e[H";      # Move cursor to top left corner
sub digitsplit {
    my @dave;
    my @times = @_;
    foreach my $time (@times){
        my @digits = split //, $time;
        foreach my $digit (@digits){
            if (exists $numbers{$digit}) {
              foreach my $line ($numbers{$digit}){
                
            } else {
                push @dave, "unknown";  # Or some other placeholder value
            }
        } 
        if (exists $numbers{10}) {
            push @dave, $numbers{10};
        } else {
            push @dave, "unknown";  # Or some other placeholder value
        }
    }
    return @dave;
}



my ($sec, $min, $hour) = localtime(time);
my @time = ($hour, $min, $sec);
my @curr = digitsplit(@time);

=pod


print "Welcome to My Perl App\n";
print "Press q to quit\n\n";
my $input = '';
while ($input ne 'q') {
  my @curr = digitsplit($hour, $min, $sec);
  print "(@curr[0][5])";
  my $len = scalar @curr;
  for my $row (0 .. $len-1){
    for my $num (0 .. $#curr){
      my $n = $curr[$num][$row];
      print "$n";
      }
      print "\n";
    }
  print "Enter something: ";
  $input = <STDIN>;
  chomp $input;
  print "You entered: $input\n";
  sleep(1);
  next;
}
=cut

# Restore terminal to its original state
#print "\e[?25h";   # Show cursor
  #print "\e[?1049l"; # Disable alternate screen buffer


    
