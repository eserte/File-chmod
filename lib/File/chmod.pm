# VERSION
our $UMASK     = 1;
#  warnings::warnif 'deprecated', '$UMASK being true is deprecated'
#    . ' it will be false by default in the future. This change'
#    . ' is being made because this not the behavior of the unix command'
#    . ' `chmod`. This warning can be disabled by putting explicitly'
#    . ' setting $File::chmod::UMASK to false or any non 2 true value'
#    if $UMASK == 2;
=for test_synopsis
my ( @files );