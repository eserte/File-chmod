use warnings;
use Carp;
use vars qw( $VAL $W $MODE );

use base 'Exporter';
our $VERSION = '0.33'; # VERSION
our @EXPORT    = (qw( chmod getchmod ));
our @EXPORT_OK = (qw( symchmod lschmod getsymchmod getlschmod getmod ));
our $DEBUG     = 1;
our $UMASK     = 2;
our $MASK      = umask;

  warnings::warnif 'deprecated', '$UMASK being true is deprecated'
    . ' it will be false by default in the future. This change'
    . ' is being made because this not the behavior of the unix command'
    . ' `chmod`. This warning can be disabled by putting explicitly'
    . ' setting $File::chmod::UMASK to false or any non 2 true value'
    if $UMASK == 2;


__END__

=pod

=head1 NAME

File::chmod - Implements symbolic and ls chmod modes

=head1 VERSION

version 0.33

  # this next line is temporarily required until we can remove
  # UMASK being on by default
  $File::chmod::UMASK = 0;
=begin test_synopsis




=end test_synopsis

my @files;


=head1 AUTHORS

=over 4

=item *

Jeff Pinyan <japhy.734+CPAN@gmail.com>

=item *

Caleb Cushing <xenoterracide@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Caleb Cushing and Jeff Pinyan.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut