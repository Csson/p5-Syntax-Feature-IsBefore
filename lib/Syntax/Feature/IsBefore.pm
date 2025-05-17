use 5.40.0;
use strict;
use warnings;

package Syntax::Feature::IsBefore;

# ABSTRACT: Short intro
# AUTHORITY
our $VERSION = '0.0100';

use Sub::Infix;
use DateTime;
use Exporter qw(import);
our @EXPORT = qw(is_before);

sub install {
    my ($class, %args) = @_;
    no strict 'refs';
    *{$args{into} . '::is_before'} = infix { DateTime->compare($_[0], $_[1]) == -1 };
}
# ABSTRACT: provides an "in" operator as a replacement for smartmatch
1;

1;

__END__

=pod

=head1 SYNOPSIS

    use Syntax::Feature::IsBefore;

=head1 DESCRIPTION

Syntax::Feature::IsBefore is ...

=head1 SEE ALSO

=cut
